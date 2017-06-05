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

    private void OnCollisionEnter(Collision collision)
    {
        if(collision.collider.CompareTag("Player"))
        {

            if (collision.transform.position.y - .5f > transform.position.y )
            {

                collision.gameObject.GetComponent<ThirdPersonPlayerController>().MV.jumpCount = 0;
                collision.gameObject.GetComponent<Rigidbody>().AddForce((Vector3.up ) * jumpVel);
            }
        }
    }

    // Update is called once per frame
    void Update ()
    {
		
	}
}
