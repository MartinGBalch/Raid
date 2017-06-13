using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MinionHealth : MonoBehaviour, IDamageable {


    public float Health;
    private float ResistDamage = 0;
    public OrbMovement minion;
    public ParticleSystem Damage;
    public GameObject blood;
    public GameObject sword;
    public float EstimatedDamageTaken(float damageDealt)
    {
        return damageDealt - ResistDamage;
    }
    public void TakeDamage(float damageDealt)
    {
       
        Health -= EstimatedDamageTaken(damageDealt);

        minion.Damaged = true;
        minion.In = true;
        if (Health <= 0)
        {
            Instantiate(blood, transform.position, transform.rotation);
            Destroy(sword);
        }
        Damage.Play();
    }
    void Start ()
    {
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
