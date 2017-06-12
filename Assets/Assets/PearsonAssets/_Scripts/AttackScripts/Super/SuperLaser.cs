using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SuperLaser : MonoBehaviour {
    public float DamageAmount;

    private void OnTriggerStay(Collider other)
    {
        if (other.GetComponent<IDamageable>() != null && other.tag != "Player")
        {


            var IsDamageable = other.GetComponent<IDamageable>();
            IsDamageable.TakeDamage(DamageAmount);
        }
    }
  
}
