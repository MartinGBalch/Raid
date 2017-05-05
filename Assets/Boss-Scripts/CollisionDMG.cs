using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CollisionDMG : MonoBehaviour {

    public float Dmg;
  

    void OnTriggerEnter(Collider collider)
    {
        

       
            Debug.Log("Dmg IS" + Dmg);
           
    }


    // Use this for initialization
    void Start()
    {
       
    }

    // Update is called once per frame
    void Update()
    {
       
    }
}
