﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BossHealth : MonoBehaviour, IDamageable {

    public float Health;
    public float ResistDamage;
    private float StartResistance;
    public float VulnerableTime;
    private float StartTimer;
    
    private float DamageToBeDealt = 0;
    public float EstimatedDamageTaken(float damageDealt)
    {
        return damageDealt - ResistDamage;
    }
    public void TakeDamage(float damageDealt)
    {
        DamageToBeDealt = EstimatedDamageTaken(damageDealt);
        if(DamageToBeDealt >= 0)
        {
            Health -= DamageToBeDealt;
        }
        
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
        if(Health <= 0)
        {
            Destroy(gameObject);
        }
        
	}
}