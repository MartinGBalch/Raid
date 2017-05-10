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
                other.GetComponent<BossPartsHealth>().TakeDamage(DamageAmount);
            }
            else if(other.CompareTag("Boss"))
            {
                other.GetComponent<BossHealth>().TakeDamage(DamageAmount);
            }
        }
    }

}
