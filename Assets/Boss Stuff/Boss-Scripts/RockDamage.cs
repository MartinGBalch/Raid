using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RockDamage : MonoBehaviour {

    public float Damage;
    public float TimeToKill;

    void OnCollisionEnter(Collision other)
    {
        if(other.gameObject.tag == "Player")
        {
            var player = other.gameObject.GetComponent<PlayerHealth>();
            player.TakeDamage(Damage);
        }
    }


	// Use this for initialization
	void Start ()
    {
        Destroy(gameObject, TimeToKill);
	}
	
	// Update is called once per frame
	void Update () {
		
	}
}
