﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
public class PlayerHealth : MonoBehaviour, IDamageable
{
    public float Health;
    public float ResistDamage;
    public float MaxHealth;
    public Image Circle;
    public bool Imune;
    
    public CameraShake Shake;
    public ParticleSystem Damage;
    public float EstimatedDamageTaken(float damageDealt)
    {
        return damageDealt - ResistDamage;
    }
    public void TakeDamage(float damageDealt)
    {
        if (!Imune)
        {
            Shake.StartShake(Shake.testProperties);
            Health -= EstimatedDamageTaken(damageDealt);
            Damage.Play();
        }
    }

    void Start ()
    {
        MaxHealth = Health;	
	}
	
	// Update is called once per frame
	void Update ()
    {
        Health = Mathf.Clamp(Health, 0, MaxHealth);
        if(Health <= 0)
        {
            Destroy(gameObject);
        }
        Circle.fillAmount = Health / MaxHealth;
	}
}