using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BossHealth : MonoBehaviour, IDamageable
{
    public Canvas UIBar;
    private TimeManager DeltaTime;
    float DT;

    Animator anim;
    public float Health;

    public float Stage1Health;
    public float Stage2Health;
    public float Stage3Health;
    public float MaxHealth;
    public int HealthStage;

    public float ResistDamage;
    private float StartResistance;
    public float VulnerableTime;
    private float StartTimer;
    MinionSpawn BabySpawner;
    BossStateManagerTwo BossState;
    public ParticleSystem Damage;
    private CameraShake Shake;
    private float DamageToBeDealt = 0;
    bool done = false;
    public bool IsVulner = false;
    public PylonManager Manager;

    public bool FuckBugs = false;
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

   
    // Use this for initialization
    void Start ()
    {

        Manager = FindObjectOfType<PylonManager>();
        anim = GetComponent<Animator>();
        DeltaTime = FindObjectOfType<TimeManager>();

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

	// Update is called once per frame
	void Update ()
    {
        DT = DeltaTime.DT;

        if(FuckBugs == true)
        {
            BugTimer -= DT;
            if(BugTimer <= 0)
            {
                FuckBugs = true;
                BugTimer = 3;
            }
        }
       

		if(ResistDamage == 0 && FuckBugs == false)
        {
         
            IsVulner = true;
             
            
            if (IsVulner == true )
            {

                
                anim.SetBool("IsVul", IsVulner);
                IsVulner = false;
            }

            
            BossState.Behaviour = 69;
            VulnerableTime -= DT;

            if(Stage1Health <= 0 && HealthStage == 0)
            {
                FuckBugs = true;
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
                FuckBugs = true;
                Manager.Dela();
                anim.SetBool("IsVul", IsVulner);
               // BabySpawner.RunMechanic();
                BossState.PickBehavior();
                ResistDamage = StartResistance;
                
                VulnerableTime = StartTimer;
                HealthStage++;
            }
            else if (Stage3Health <= 0 && HealthStage == 2)
            {
                
                Destroy(gameObject);
            }

            if(VulnerableTime <= 0)
            {
                FuckBugs = true;
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
