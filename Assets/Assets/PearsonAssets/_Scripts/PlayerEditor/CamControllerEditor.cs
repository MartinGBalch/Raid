using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

using UnityEngine.SceneManagement;
public class CamControllerEditor : MonoBehaviour {
    public GameObject[] points;
    //public EditSelection selection;
    public GameObject[] Spotlight;
    public Camera cam;
    public GameObject Player, Dragon;
    public bool[] pointbool, HeadBools, BodyBools, ArmorBools; 
    public bool baseselect = true,dragonselect, playerselect, swordSelect;
    float DT;
    public float movespeed,rotspeed,nonmenuRotSpeed,NonMenuMoveSpeed,EnterSpeed,EnterRotSpeed;
    public GameObject MenuBaseFoundation;
    // Use this for initialization
    private GameObject[] Allmenus;

    public static GameObject[] getChildren(GameObject parent, bool recursive = false)
    {
        List<GameObject> items = new List<GameObject>();
        for (int i = 0; i < parent.transform.childCount; i++)
        {
            items.Add(parent.transform.GetChild(i).gameObject);
            if (recursive)
            { // set true to go through the hiearchy.
                items.AddRange(getChildren(parent.transform.GetChild(i).gameObject, recursive));
            }
        }
        return items.ToArray();
    }

    void Start ()
    {
        Allmenus = getChildren(MenuBaseFoundation,false);
        //Allmenus = MenuBaseFoundation.GetComponents<GameObject>();
        //selection = FindObjectOfType<EditSelection>();
        pointbool[0] = true;
        cam = GetComponent<Camera>();
        point = points[0];

        for (int j = 0; j < Allmenus.Length; j++)
        {
            if (Allmenus[j].activeSelf)
            {
                Allmenus[j].SetActive(false);
            }
        }
        enter = true;


        Textmenu.SetActive(true);
    }
    bool enter;
    Ray ray;
    RaycastHit hit;
    bool inmenu;
    GameObject point;
    public Fade fader;

    public void MainMenuClick()
    {
        fader.Out = true;
        inmenu = true;
        Textmenu.SetActive(false);
        baseselect = true;
        dragonselect = false;
        swordSelect = false;
        playerselect = false;
        for (int j = 0; j < Allmenus.Length; j++)
        {
            if (Allmenus[j].activeSelf)
            {
                Allmenus[j].SetActive(false);
            }
        }
        point = points[0];
        enter = true;
    }

    // Update is called once per frame
    void Update ()
    {
       
        DT = Time.deltaTime;

        if(fader.fadedout)
        {
            fader.text.SetActive(true);

            SceneManager.LoadScene("Menu");
        }



        ray = cam.ScreenPointToRay(Input.mousePosition);
        if(!enter)
        {
            if (baseselect)
            {
                transform.rotation = Quaternion.RotateTowards(transform.rotation, point.transform.rotation, DT * nonmenuRotSpeed);
                transform.position = Vector3.MoveTowards(transform.position, point.transform.position, DT * NonMenuMoveSpeed);



                if (Physics.Raycast(ray, out hit))
                {
                    if (hit.collider.tag == "MenuPlayer")
                    {
                        dragonselect = false;
                        playerselect = true;

                        swordSelect = false;
                        Spotlight[1].SetActive(true);

                        Spotlight[2].SetActive(false);

                        Spotlight[0].SetActive(false);
                    }
                    if (hit.collider.tag == "Dragon")
                    {
                        dragonselect = true;
                        swordSelect = false;
                        playerselect = false;
                        Spotlight[1].SetActive(false);

                        Spotlight[2].SetActive(false);
                        Spotlight[0].SetActive(true);

                    }
                    if (hit.collider.tag == "Sword")
                    {
                        dragonselect = false;
                        playerselect = false;
                        swordSelect = true;
                        Spotlight[1].SetActive(false);

                        Spotlight[2].SetActive(true);
                        Spotlight[0].SetActive(false);

                    }

                    if (Input.GetMouseButton(0) && dragonselect && !inmenu)
                    {
                        point = points[2];
                        Menus[0].SetActive(true);
                        inmenu = true;
                        baseselect = false;
                    }
                    if (Input.GetMouseButton(0) && playerselect && !inmenu)
                    {
                        point = points[1];

                        Menus[1].SetActive(true);
                        inmenu = true;

                        baseselect = false;
                    }
                    if (Input.GetMouseButton(0) && swordSelect && !inmenu)
                    {
                        point = points[3];

                        Menus[2].SetActive(true);
                        inmenu = true;

                        baseselect = false;
                    }
                }
            }
            else if(playerselect)
            {

                transform.rotation = Quaternion.RotateTowards(transform.rotation, point.transform.rotation, DT * rotspeed);
                transform.position = Vector3.MoveTowards(transform.position, point.transform.position, DT * movespeed);
                
            }
            else
            {
                transform.rotation = Quaternion.RotateTowards(transform.rotation, point.transform.rotation, DT * nonmenuRotSpeed);
                transform.position = Vector3.MoveTowards(transform.position, point.transform.position, DT * NonMenuMoveSpeed);

            }

        }
        else
        {

            transform.rotation = Quaternion.RotateTowards(transform.rotation, point.transform.rotation, DT * EnterRotSpeed);
            transform.position = Vector3.MoveTowards(transform.position, point.transform.position, DT * EnterSpeed);
            if (Vector3.Distance(transform.position, points[0].transform.position) <= 4)
            {
                baseselect = true;
                enter = false;
            }

        }
    }
    public GameObject[] Menus, PlayerMenus,PlayerEditMenus,DragonEditMenus,SwordEditMenus,DragonMenus,SwordMenus;
    
    public void BackClick()
    {
        Menus[0].SetActive(false);
        Menus[1].SetActive(false);
        Menus[2].SetActive(false);
        baseselect = true;
        //SwordMenu.SetActive(false);
        inmenu = false;
    }
    public void SelectClick(int i)
    {
        point = points[i];
        point.transform.position = points[i].transform.position;
        point.transform.rotation = points[i].transform.rotation;

        Textmenu.SetActive(true);
    }
    public void SelectOptions(int i)
    {
        
        for(int j = 0; j < Allmenus.Length; j++)
        {
            if (Allmenus[j].activeSelf)
            {
                Allmenus[j].SetActive(false);
            }
        }

        if (playerselect)
        {
            PlayerMenus[i].SetActive(true);
        }
        if (dragonselect)
        {
            DragonMenus[i].SetActive(true);
        }
        if(swordSelect)
        {
            SwordMenus[i].SetActive(true);
        }

        Textmenu.SetActive(true);
    }
    public void SelectEdit(int i)
    {
        for (int j = 0; j < Allmenus.Length; j++)
        {
            if (Allmenus[j].activeSelf)
            {
                Allmenus[j].SetActive(false);
            }
           
        }
        Textmenu.SetActive(true);
        if (playerselect)
        {
            PlayerEditMenus[i].SetActive(true);
        }
        if (dragonselect)
        {
            DragonEditMenus[i].SetActive(true);
        }
        if (swordSelect)
        {
            SwordEditMenus[i].SetActive(true);
        }
    }
    public GameObject Textmenu;
   
}

