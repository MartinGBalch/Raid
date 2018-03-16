﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BossHealth : MonoBehaviour, IDamageable
{
    public Canvas UIBar;
    private TimeManager DeltaTime;
    float DT;
    public static BossHealth instance;
    Animator anim;
    public float Health;

    public float Stage1Health;
    public float Stage2Health;
    public float Stage3Health;
    public float MaxHealth;
    public int HealthStage;
    private ControllerSupport controller;
    public float ResistDamage;
    private float StartResistance;
    public float VulnerableTime;
    public float StartTimer;
    MinionSpawn BabySpawner;
    BossStateManagerTwo BossState;
    public ParticleSystem Damage;
    private CameraShake Shake;
    private float DamageToBeDealt = 0;
    bool done = false;
    public bool IsVulner = false;
    public PylonManager Manager;
    bool end = false;

    public bool Bugs = false;
    float BugTimer = 3;
    public float EstimatedDamageTaken(float damageDealt)
    {
        return damageDealt - ResistDamage;
    }
    public void TakeDamage(float damageDealt)
    {
        DamageToBeDealt = EstimatedDamageTaken(damageDealt);
        if(DamageToBeDealt >= 0)
        {
            Damage.Play();
            Shake.StartShake(Shake.LightProperties);
            if(HealthStage == 0)
            {
                Stage1Health -= DamageToBeDealt;
            }
            if (HealthStage == 1)
            {
                Stage2Health -= DamageToBeDealt;
            }
            if (HealthStage == 2)
            {
                Stage3Health -= DamageToBeDealt;
            }
        }
        
    }

    void Awake()
    {
        if(instance == null)
        {
            instance = this;
        }
    }
    // Use this for initialization
    void Start ()
    {
        
        Manager = FindObjectOfType<PylonManager>();
        anim = GetComponent<Animator>();
        DeltaTime = TimeManager.FindTimeManager();
       // controller = FindObjectOfType<ControllerSupport>();
        Shake = FindObjectOfType<CameraShake>();

        BossState = GetComponent<BossStateManagerTwo>();
        BabySpawner = GetComponent<MinionSpawn>();
        StartResistance = ResistDamage;
        StartTimer = VulnerableTime;
        MaxHealth = Health;
        Stage1Health = MaxHealth / 3;
        Stage2Health = MaxHealth / 3;
        Stage3Health = MaxHealth / 3;
       
    }

    public void RunAnim()
    {
        //if (HealthStage != 2)
        //{
            anim.SetTrigger("GoToVul");
        //}
        //else { anim.SetTrigger("Scream"); }
       
    }
    bool cheatonce;
	// Update is called once per frame
	void Update ()
    {
      
        DT = DeltaTime.DT;

        if (Bugs == true)
        {
            BugTimer -= DT;
            if (BugTimer <= 0)
            {
                Bugs = false;
                BugTimer = 3;
            }
        }
        VulnerableTime -= DT;

        if (ResistDamage == 0 && Bugs == false)
        {
         
            IsVulner = true;
             
            
            if (IsVulner == true && HealthStage != 2)
            {

                
                anim.SetBool("IsVul", IsVulner);
                
            }

            if(HealthStage != 2)
            {
                BossState.Behaviour = 69;
            }
           
            

            if(Stage1Health <= 0 && HealthStage == 0)
            {
                IsVulner = false;
                Bugs = true;
                Manager.Dela();
                
                anim.SetBool("IsVul", IsVulner);
             //   BabySpawner.RunMechanic();
                BossState.PickBehavior();
                ResistDamage = StartResistance;
               
                VulnerableTime = StartTimer;
                HealthStage++;
                
            }
            else if (Stage2Health <= 0 && HealthStage == 1)
            {
                IsVulner = false;
               
                Bugs = true;
                Manager.Dela();
                anim.SetBool("IsVul", IsVulner);
                // BabySpawner.RunMechanic();
                BossState.Behaviour = 1;
                ResistDamage = StartResistance;
                
                VulnerableTime = StartTimer;
                HealthStage++;
            }
            else if (Stage3Health <= 0 && HealthStage == 2 && end == false)
            {
                
                end = true;
               // Destroy(gameObject);


                anim.SetTrigger("ShiNe");

            }

            if(VulnerableTime <= 0)
            {
                IsVulner = false;
               
                Bugs = true;
                Manager.Dela();
                anim.SetBool("IsVul", IsVulner);
                //BabySpawner.RunMechanic();
                BossState.PickBehavior();
               
                ResistDamage = StartResistance;
                VulnerableTime = StartTimer;
            }
        }
       
        
	}
}