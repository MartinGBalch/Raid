using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Bounce : MonoBehaviour {
    private GameObject Player;
    private Rigidbody RB;
    public float jumpVel;
	// Use this for initialization
	void Start ()
    {
        Player = GameObject.FindGameObjectWithTag("Player");
        RB = Player.GetComponent<Rigidbody>();
	}

    private void OnTriggerEnter(Collider other)
    {

        if (other.CompareTag("Player"))
        {


            other.GetComponent<ThirdPersonPlayerController>().MV.jumpCount = 0;
            other.GetComponent<Rigidbody>().AddForce((Vector3.up) * jumpVel);

        }
    }

    // Update is called once per frame
    void Update ()
    {
		
	}
}
