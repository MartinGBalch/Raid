using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AttackDamage : MonoBehaviour
{
    public GameObject PlayerCam;
    public GameObject Player;
    public ThirdPersonPlayerController PlayerController;
    public TimeManager Timer;
    public EnergyCharge Energy;
    public float DamageAmount;
    public float EnergyRechargeAmt;
    private void Start()
    {
      
    }
    public void OnTriggerEnter(Collider other)
    {
     
            if (other.CompareTag("Enemy"))
            {
                var Stunnable = other.GetComponent<MinionMovement>();
                var IsDamageable = other.GetComponent<IDamageable>();
              
                if (IsDamageable != null)
                {
                    IsDamageable.TakeDamage(DamageAmount);
                    Energy.Energy += EnergyRechargeAmt;
                }
                if(Stunnable != null)
                {
                    Stunnable.IsStunned = true;
                }
            }
            else if(other.CompareTag("Boss"))
            {
                //other.GetComponent<BossHealth>().TakeDamage(DamageAmount);
                var IsDamageable = other.GetComponent<IDamageable>();
                if (IsDamageable != null)
                {
                    IsDamageable.TakeDamage(DamageAmount);
                }
            }
            else if(other.GetComponent<IDamageable>() != null && !other.CompareTag("Player"))
            {
                var IsDamageable = other.GetComponent<IDamageable>();
                IsDamageable.TakeDamage(DamageAmount);
            }
        
    }

}
