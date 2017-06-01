using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Rotator : MonoBehaviour {

    public bool Rotate;
    private float DT;
    public float RotSpeed;
    public Transform Base;
	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update ()
    {
        DT = Time.deltaTime;

        if (Rotate)
        {
            transform.Rotate(0, RotSpeed, 0);
           
        }
        else
        {
            transform.forward = Base.transform.forward;
        }
    }
}
