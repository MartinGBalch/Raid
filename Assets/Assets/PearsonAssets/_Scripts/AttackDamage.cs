using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AttackDamage : MonoBehaviour
{
    public GameObject PlayerCam;
    public GameObject Player;
    public ThirdPersonPlayerController PlayerController;
    public float DamageAmount;
    public void OnTriggerEnter(Collider other)
    {
        if(PlayerController.attacking)
        {
            if (other.CompareTag("Enemy"))
            {
                // other.GetComponent<BossPartsHealth>().TakeDamage(DamageAmount);
                var Stunnable = other.GetComponent<MinionMovement>();
               var IsDamageable = other.GetComponent<IDamageable>();
                if(IsDamageable != null)
                {
                    IsDamageable.TakeDamage(DamageAmount);
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
        }
    }

}
