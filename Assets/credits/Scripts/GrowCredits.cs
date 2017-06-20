using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GrowCredits : MonoBehaviour {
    public GameObject titleGrow;
    bool Grownow, Shrink;
    bool Passed = false;
    float DT, speed;
	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
        if(Grownow)
        {
            DT = Time.deltaTime;
            titleGrow.transform.localScale += new Vector3(DT * speed, DT * speed, DT * speed);

        }
        if(Shrink)
        {
            titleGrow.transform.localScale -= new Vector3(DT* speed, DT* speed, DT* speed);
        }

	}

    public void OnTriggerEnter(Collider other)
    {   if(Passed == false)
        {
            Grownow = true;
            Shrink = false;
        }
    }
    public void OnTriggetExit(Collider other)
    {
        Shrink = true;
        Grownow = false;
        Passed = true;
    }
}
