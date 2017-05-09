using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BossHealth : MonoBehaviour, IDamageable {

    public float Health;
    public float ResistDamage;
    private float StartResistance;
    public float VulnerableTime;
    private float StartTimer;


    public float EstimatedDamageTaken(float damageDealt)
    {
        return damageDealt - ResistDamage;
    }
    public void TakeDamage(float damageDealt)
    {
        Health -= EstimatedDamageTaken(damageDealt);
    }


    // Use this for initialization
    void Start ()
    {
        StartResistance = ResistDamage;
        StartTimer = VulnerableTime;
	}
	
	// Update is called once per frame
	void Update ()
    {
		if(ResistDamage == 0)
        {
            VulnerableTime -= Time.deltaTime;
            if(VulnerableTime <= 0)
            {
                ResistDamage = StartResistance;
                VulnerableTime = StartTimer;
            }
        }
	}
}
