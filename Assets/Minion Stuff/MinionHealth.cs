using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MinionHealth : MonoBehaviour, IDamageable {


    public float Health;
    public float ResistDamage;
    

    public float EstimatedDamageTaken(float damageDealt)
    {
        return damageDealt - ResistDamage;
    }
    public void TakeDamage(float damageDealt)
    {
        Health -= EstimatedDamageTaken(damageDealt);

    }
    void Start () {
		
	}
	
	// Update is called once per frame
	void Update ()
    {
        if (Health <= 0)
        {
            Destroy(gameObject);
        }	

	}
}
