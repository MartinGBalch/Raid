using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class overhead : MonoBehaviour {

    public GameObject cam;
	
	// Update is called once per frame
	void Update ()
    {
        if (cam.GetComponent<ThirdPersonCameraController>().target != null)
        {
            transform.position = cam.GetComponent<ThirdPersonCameraController>().target.transform.position + new Vector3(0, .5f, 0);
        }
        else
        {
            transform.position = new Vector3(0, 0, 0);
        }
	}
}
