using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AttackDamageMinion : MonoBehaviour {

    public float DamageAmount;
    public TimeManager Time;

    private void Start()
    {
        Time = FindObjectOfType<TimeManager>();
    }

    private void OnTriggerEnter(Collider other)
    {
        if(other.CompareTag("Player"))
        {
            Time.startSlowMotion(Time.TestProperties);
            other.GetComponent<PlayerHealth>().TakeDamage(DamageAmount);
           
        }
    }
}
