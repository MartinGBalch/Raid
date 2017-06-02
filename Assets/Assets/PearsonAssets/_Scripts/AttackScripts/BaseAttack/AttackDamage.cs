using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AttackDamage : MonoBehaviour
{
    public GameObject PlayerCam;
    public GameObject Player;
    public CameraShake Shake;
    public ThirdPersonPlayerController PlayerController;
    private TimeManager Timer;
    public EnergyCharge Energy;
   
    public float DamageAmount;
    public float EnergyRechargeAmt;
    private void Start()
    {
        Shake = FindObjectOfType<CameraShake>();
        Timer = FindObjectOfType<TimeManager>();
    }
    public void OnTriggerEnter(Collider other)
    {
     
            if (other.CompareTag("Enemy"))
            {
                //svar Stunnable = other.GetComponent<MinionMovement>();
                var IsDamageable = other.GetComponent<IDamageable>();
              
                if (IsDamageable != null)
                {
                    //Timer.startStopTime(Timer.StopProperties);
                    IsDamageable.TakeDamage(DamageAmount);
                    Energy.Energy += EnergyRechargeAmt;
                }
                //if(Stunnable != null)
                //{
                //    Stunnable.IsStunned = true;
                //}s
            }
            else if(other.CompareTag("Boss"))
            {
                //other.GetComponent<BossHealth>().TakeDamage(DamageAmount);
                var IsDamageable = other.GetComponent<IDamageable>();
                if (IsDamageable != null)
            {
                Shake.StartShake(Shake.AttackProperties);
              
                    IsDamageable.TakeDamage(DamageAmount);
                }
            }
            else if(other.GetComponent<IDamageable>() != null && !other.CompareTag("Player"))
            {
                var IsDamageable = other.GetComponent<IDamageable>();
                IsDamageable.TakeDamage(DamageAmount);
                Shake.StartShake(Shake.LightProperties);
            }
        
    }

}
