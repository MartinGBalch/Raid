using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BossPartsHealth : MonoBehaviour, IDamageable
{
    private SuperState State;
    public float Health;
    public float StartHealth;
    private float ResistDamage = 0;
    //public float DamageToBoss;
    //public GameObject Boss;
    public GameObject Mesh;
    public GameObject Manager,placeholder;
    PylonManager PM;
    bool Reset = false;
    public bool Alive = true;
    public float ResetTimer;
    private float StartTime;
    public ParticleSystem Beam,Damage;
    private BossHealth bossHealth;
    private PylonChargeScript Charge;
    private EnergyCharge Energy;
    private PlayformFall faller;
    public GameObject[] SpwnPts,Minions;

    public GameObject[] Pylons;
    private MaterialChangeScript changer;
    private Projectile gun;
    public ParticleSystem die;
    public float EstimatedDamageTaken(float damageDealt)
    {
        return damageDealt - ResistDamage;
    }
    public void TakeDamage(float damageDealt)
    {
        Health -= EstimatedDamageTaken(damageDealt);
        Damage.Play();
    }

    void Start ()
    {
        changer = FindObjectOfType<MaterialChangeScript>();
        faller = FindObjectOfType<PlayformFall>();
        Pylons = GameObject.FindGameObjectsWithTag("Pylon");
        gun = FindObjectOfType<Projectile>();
        Energy = FindObjectOfType<EnergyCharge>();
        Charge = GetComponent<PylonChargeScript>();
        State = FindObjectOfType<SuperState>();
        placeholder = GameObject.FindGameObjectWithTag("PlaceHolder");
        StartHealth = Health;
        StartTime = ResetTimer;
        PM = Manager.GetComponent<PylonManager>();
        bossHealth = FindObjectOfType<BossHealth>();
	}

    // Update is called once per frame
    void Update()
    {
        if (placeholder.transform.position.y >= 20)
        {
            if (Beam.isPlaying == false && Health > 0 && Alive)
            {
                Beam.Play();
            }
        }
        //if (Health > 0) { Debug.DrawLine(transform.position, Boss.transform.position); }


        if (Health <= 0 && Alive == true)
        {
            Alive = false;
            PM.NeedReset = false;

            Health = StartHealth;
            if(die.isPlaying == false)
            {
                die.Play();
            }
            if (bossHealth.HealthStage == 2)
            {



                if (Charge.chargeNumber == 3)
                {
                    faller.dieNumb = 0;
                }
                if (Charge.chargeNumber == 2)
                {
                    faller.dieNumb = 1;
                }
                if (Charge.chargeNumber == 1)
                {
                    faller.dieNumb = 2;
                }
                if (Charge.chargeNumber == 4)
                {
                    faller.dieNumb = 3;
                }
                faller.die = true;
                faller.faller = faller.fallTime;
            }
            
            Beam.Stop();
            if (State.Charge != 0)
            {
                State.Player.Objects.SuperCharged[State.Charge - 1].Stop();
                Energy.Charge[Energy.super.Charge - 1].Stop();
            }
            State.Charge = Charge.chargeNumber;
            State.abilityCharge = Charge.chargeNumber;
            State.timer = State.abilitytime;
            gun.newobj = true;
            changer.newobj = true;

            Mesh.gameObject.GetComponent<MeshRenderer>().enabled = false;
            gameObject.GetComponent<CapsuleCollider>().enabled = false;
            PM.PylonCount--;
        }
        if (PM.NeedReset == true)
        {
            

            if (bossHealth.HealthStage != 2)
            {




                if (Alive == false)
                {
                  
                    for (int i = 0; i < SpwnPts.Length; i++)
                    {
                        Instantiate(Minions[i], SpwnPts[i].transform.position, Minions[i].transform.rotation);
                    }
                }

                Alive = true;
            }



            Mesh.gameObject.GetComponent<MeshRenderer>().enabled = true;
            gameObject.GetComponent<CapsuleCollider>().enabled = true;

           
           




        }
        }

     

    
}
 