using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class powerupFXcontroller : MonoBehaviour {

    public float pwrlvl;
    public float intensitymax;
    public Light lt;

	// Use this for initialization
	void Start () {
        lt = GetComponent<Light>();
	}
	
	// Update is called once per frame
	void Update () {
        if (pwrlvl < 1)
        {
            lt.intensity = pwrlvl * intensitymax;
        }
        if (pwrlvl >= 1)
        {
            lt.intensity = 0f;
        }
	}

    void Firelight ()
    {

    }
}
