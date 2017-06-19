using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MenuBridge : MonoBehaviour {
    GameObject[] temp;
    GameObject[] temp3;


    // Use this for initialization
    void Start () {
     

            temp = GameObject.FindGameObjectsWithTag("Dragon");

            GameObject[] temp2 = GameObject.FindGameObjectsWithTag("Menu");
            temp3 = GameObject.FindGameObjectsWithTag("MenuPlayer");

        if(temp2 != null)
        {
            for (int i = 0; i < temp2.Length; i++)
            {
                temp2[i].SetActive(false);

            }
        }

        if (temp3 != null)
        {
            for (int i = 0; i < temp3.Length; i++)
            {
                temp3[i].transform.position = new Vector3(0,-20,0);

            }
        }
        if (temp != null)
        {
            for (int i = 0; i < temp.Length; i++)
            {
                temp[i].transform.position = new Vector3(0, -20, 0);

            }
        }


    }

        // Update is called once per frame
        void Update () {
		
	}
}
