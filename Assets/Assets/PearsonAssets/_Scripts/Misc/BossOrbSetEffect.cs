using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BossOrbSetEffect : MonoBehaviour {

    public GameObject[] systems;

    public int desiredObject;
    public bool change;
  
	// Use this for initialization
	void Start () {
	}
	
	// Update is called once per frame
	void Update () {

        if(change)
        {   
                for (int i = 0; i < systems.Length; i++)
                {
                    if (i == desiredObject)
                    {
                        systems[i].SetActive(true);
                    }
                    else
                    {
                        systems[i].SetActive(false);
                    }
                }
            
            change = false;
        }
      
		
	}
}
