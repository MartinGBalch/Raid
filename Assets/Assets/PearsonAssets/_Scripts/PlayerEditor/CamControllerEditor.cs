using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
public class CamControllerEditor : MonoBehaviour {
    public Transform[] points;
    public EditSelection selection;
    public GameObject[] Spotlight;
    public Camera cam;
    public GameObject Player, Dragon;
    public bool point1, point2, selectpoint;
    public bool dragonselect, playerselect;
    float DT;
    public float movespeed,rotspeed;
	// Use this for initialization
	void Start () {
        selection = FindObjectOfType<EditSelection>();
        selectpoint = true;
        cam = GetComponent<Camera>();
	}

    Ray ray;
    RaycastHit hit;
    // Update is called once per frame
    void Update ()
    {
        DT = Time.deltaTime;
        if (selectpoint)
        {
            point1 = false;
            point2 = false;
            transform.rotation = Quaternion.RotateTowards(transform.rotation,points[0].rotation, DT * rotspeed);
            transform.position = Vector3.MoveTowards(transform.position, points[0].position, DT * movespeed);


            
            ray = cam.ScreenPointToRay(Input.mousePosition);
            Debug.DrawRay(ray.origin, ray.direction * 100.0f);
            if (Physics.Raycast(ray, out hit))
            {
                Debug.Log(hit.collider.name);
                Debug.Log(hit.collider.tag);
                if (hit.collider.tag == "Player" )
                {
                    Debug.Log("Player");
                    dragonselect = false;
                    playerselect = true;
                    Spotlight[1].SetActive(true);

                    Spotlight[0].SetActive(false);
                }
               if(hit.collider.tag == "Dragon" )
                {
                    Debug.Log("Dragon");
                    dragonselect = true;
                    playerselect = false;
                    Spotlight[1].SetActive(false);

                    Spotlight[0].SetActive(true);
                    
                }

                if (Input.GetMouseButton(1) && dragonselect)
                {
                    point1 = true;
                    point2 = false;
                    selectpoint = false;
                }
                if (Input.GetMouseButton(1) && playerselect)
                {
                    point1 = true;
                    point2 = false;
                    selectpoint = false;
                }
            }
        }

        if(point1)
        {
            transform.rotation = Quaternion.RotateTowards(transform.rotation, points[1].rotation, DT * rotspeed);
            transform.position = Vector3.MoveTowards(transform.position, points[1].position, DT * movespeed);
            if(Input.GetKeyDown(KeyCode.I))
            {
                point1 = false;
                point2 = false;
                selectpoint = true;

            }
        }
        else if(point2)
        {
            transform.rotation = Quaternion.RotateTowards(transform.rotation, points[2].rotation, DT * rotspeed);
            transform.position = Vector3.MoveTowards(transform.position, points[2].position, DT * movespeed);

            if (Input.GetKeyDown(KeyCode.I))
            {
                point1 = false;
                point2 = false;
                selectpoint = true;

            }

        }

    }
}
