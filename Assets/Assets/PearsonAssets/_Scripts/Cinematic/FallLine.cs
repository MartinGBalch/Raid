using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FallLine : MonoBehaviour {
    private ThirdPersonCameraController cam;
	// Use this for initialization
	void Start () {
        cam = FindObjectOfType<ThirdPersonCameraController>();
	}
	
	// Update is called once per frame
	void Update () {
		
	}


    private void OnTriggerEnter(Collider other)
    {
        if(other.CompareTag("Player"))
        {
            other.GetComponent<ThirdPersonPlayerController>();
            cam.stopPos = cam.transform.position;
            cam.die = true;
        }
    }
    private void OnTriggerExit(Collider other)
    {
        if(other.CompareTag("Player"))
        {
            if(other.transform.position.y < transform.position.y)
            {
                other.GetComponent<PlayerHealth>().TakeDamage(10000);
            }
        }
    }
}
