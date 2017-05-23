using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BoulderFall : MonoBehaviour {

    public float dmg;
    public bool Kinetic = true;
    private void OnCollisionEnter(Collision collision)
    {
        if(collision.collider.tag == "Floor")
        {
            Kinetic = false;
            Destroy(gameObject, .5f);
        }
        if(collision.collider.tag == "Player" && Kinetic == true)
        {
            var player = collision.gameObject.GetComponent<PlayerHealth>();
            if(player != null)
            {
                player.TakeDamage(dmg);
                Destroy(gameObject, .5f);
            }
        }
    }

    // Update is called once per frame
    void Start()
    {

		
	}
	
	// Update is called once per frame
	void Update () {
		
	}
}
