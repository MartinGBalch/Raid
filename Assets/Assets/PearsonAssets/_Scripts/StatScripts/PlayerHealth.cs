using System.Collections;
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
    private ThirdPersonPlayerController controller;
    public CameraShake Shake;
    public ParticleSystem Damage, Death;
    public AudioSource DamageSound;
    public GameObject Boss;
    public BossStateManagerTwo bosser;
    public GameObject Camera,Bird;
    public AudioClip[] Dmg;
    public float imunity,damagemultiply;
    public float EstimatedDamageTaken(float damageDealt)
    {
        return damageDealt - ResistDamage;
    }
    public void TakeDamage(float damageDealt)
    {
        if (!Imune)
        {
            if(controller.Abilites[3] == false )
            {
                Health -= EstimatedDamageTaken(damageDealt);
            }
            else
            {
                if (controller.Abilites[3])
                {
                    if ((damageDealt - imunity) <= 0)
                    {

                        Health -= EstimatedDamageTaken(5);
                    }
                    else
                    {

                        Health -= EstimatedDamageTaken(damageDealt - imunity);
                    }
                }
            }
            Shake.StartShake(Shake.TakeDamageProperties);
           
            Damage.Play();
            DamageSound.PlayOneShot(Dmg[Random.Range(0,3)]);
        }
    }

    void Start ()
    {
     
        controller = GetComponent<ThirdPersonPlayerController>();
        MaxHealth = Health;	
	}
    public float damageOverTime;
    public float burnamount;
    float timer;
    bool startDamage;
	// Update is called once per frame
	void Update ()
    {
        Health = Mathf.Clamp(Health, 0, MaxHealth);
       
        if(Health <= 0)
        {



            Instantiate(Death, transform.position, Death.transform.rotation);
            Instantiate(Death, Bird.transform.position, Death.transform.rotation);
            var BossShit = Boss.GetComponent<BossStateManagerTwo>();/// LUL
            BossShit.Behaviour = 69;
            BossShit.behaviorTimer = 300;
            Boss.GetComponent<BossTurning>().enabled = false;
            Boss.GetComponent<Animator>().SetTrigger("Win");
            Boss.GetComponent<Animator>().SetBool("Cinematic", true);
            Camera.GetComponent<ThirdPersonCameraController>().enabled = false;
            Bird.GetComponent<BirdMotor>().enabled = false;
            Destroy(gameObject);
            Destroy(Bird);

            

        }
        Circle.fillAmount = Health / MaxHealth;
	}
}
