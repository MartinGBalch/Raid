using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FistCollision : MonoBehaviour {

    public float timer;
    bool IsDamage = false;
    private float ActualTimer;
	void Start ()
    {
        ActualTimer = timer;	
	}
	
    void OnTriggerStay(Collider collider)
    {
        if(IsDamage == true)
        {
            Debug.Log("Fist Slam Damage");
            IsDamage = false;
            Destroy(gameObject);
        }
    }

	// Update is called once per frame
	void Update ()
    {
        ActualTimer -= Time.deltaTime;
        if(ActualTimer <= 0)
        {
            IsDamage = true;
        }	
	}
}
