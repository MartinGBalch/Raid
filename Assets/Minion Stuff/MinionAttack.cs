using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MinionAttack : MonoBehaviour {
    public float damage;
    
    // Use this for initialization
    void Start () {
		
	}
    void OnTriggerEnter(Collider other)
    {
        if (other.tag == "Player")
        {
            gameObject.GetComponent<BoxCollider>().enabled = false;
            Debug.Log("Damage");
            other.GetComponent<PlayerHealth>().TakeDamage(damage);
            
        }

    }

	// Update is called once per frame
	void Update () {
	
	}
}
