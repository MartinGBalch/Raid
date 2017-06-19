using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerBaseScript : MonoBehaviour {


    public GameObject BaseState;
    private MaterialChangeManager[] managers;

    public static MaterialChangeManager[] getChildren(GameObject parent, bool recursive = false)
    {
        List<MaterialChangeManager> items = new List<MaterialChangeManager>();
        for (int i = 0; i < parent.transform.childCount; i++)
        {
            if (parent.transform.GetChild(i).gameObject.GetComponent<MaterialChangeManager>() != null)
            {
                if (parent.transform.GetChild(i).gameObject.GetComponent<MaterialChangeManager>().Desired != "Dragon" && parent.transform.GetChild(i).gameObject.GetComponent<MaterialChangeManager>().Desired != "Sword")
                {
                    items.Add(parent.transform.GetChild(i).gameObject.GetComponent<MaterialChangeManager>());
                }
            }
            if (recursive)
            { // set true to go through the hiearchy.
                items.AddRange(getChildren(parent.transform.GetChild(i).gameObject, recursive));
            }
        }
        return items.ToArray();
    }
    // Use this for initialization
    void Start () {
        managers = getChildren(BaseState, false);

	}
	
	// Update is called once per frame
	void Update () {
		
	}
    int j = 0;
    public void BaseClick()
    {
        for (int i = 0; i < managers.Length; i++)
        {
            managers[i].custom = false;
            managers[i].rend.material = managers[i].baseMats[j];
        }
    }

    public void NextClick()
    {
        j++;
        p++;
        if (j > 4)
        {
            j = 0;
        }
        if (p > 4)
        {
            p = 0;
        }
        for (int i = 0; i < managers.Length; i++)
        {
            managers[i].custom = false;
            managers[i].desired++;
            managers[i].rend.material = managers[i].baseMats[j];
        }
    }
    public void PreviousClick()
    {
        j--;
        p--;
        if(j < 0)
        {
            j = 4;
        }
        if (p < 0)
        {
            p = 4;
        }
        for (int i = 0; i < managers.Length; i++)
        {
            managers[i].custom = false;
            managers[i].desired--;
            managers[i].rend.material = managers[i].baseMats[j];
        }
    }
    int p = 0;
    public void AdvancedClick()
    {
        for (int i = 0; i < managers.Length; i++)
        {
            managers[i].custom = true;
            managers[i].rend.material = managers[i].CustombaseMats[p];
        }
    }
}
