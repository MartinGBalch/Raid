using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BossStateManagerTwo : MonoBehaviour
{

    AoEAttack AoeMechanic;
    FistSlam FistSlamMechanic;
    SpawnBoulders BoulderFallMechanic;
    Projectile ProjectileMechanic;
    BossHealth Health;
    BeamAttack WipeMechanic;
    BossTurning Turning;
    private float DT;
    public int State;
    public int Behaviour;

    public float behaviorTimer;
    private float BehaviorStart;

    public float Timer;
    private float StartTime;

    public float Timer2;
    private float StartTime2;

    public float WipeTimer;
    private float StartWipe;

    public float WipeDelay;
    private float StartDelay;

    int BulletSprayAmount;
    void Awake()
    {
        
        State = 0;
       // Behaviour = 1;
        BehaviorStart = behaviorTimer;
        StartTime = Timer;
        StartTime2 = Timer2;
        StartWipe = WipeTimer;
        StartDelay = WipeDelay;
        Health = GetComponent<BossHealth>();
        AoeMechanic = GetComponent<AoEAttack>();
        FistSlamMechanic = GetComponent<FistSlam>();
        BoulderFallMechanic = GetComponent<SpawnBoulders>();
        ProjectileMechanic = GetComponent<Projectile>();
        WipeMechanic = GetComponent<BeamAttack>();
        Turning = GetComponent<BossTurning>();

        
    }
    void Start()
    {
        BulletSprayAmount = 0;
    }


    void BehaviorOne()
    {
        // Projectile Burst

        Timer -= DT;
        if (Timer <= 0)
        {
            BulletSprayAmount++;
            ProjectileMechanic.RunMechanic();
            if (BulletSprayAmount <= 5) { Timer = StartTime / 3; }
            else { Timer = StartTime; }  
        }


    }
    void BehaviorTwo()
    {
        // Mass AoE
        Timer -= DT;
        if (Timer <= 0)
        {
            AoeMechanic.RunMechanic();
            BoulderFallMechanic.RunMechanic();
            Timer = StartTime;
        }

    }
    void BehaviorThree()
    {
        //Fist slam and Projectile
        Timer -= DT;
        Timer2 -= DT;
        if (Timer <= 0)
        {
            Turning.AdjustTimer = 0;
            if (Turning.FOVCheck(15))
            {
                Turning.IsTurning = false;
                FistSlamMechanic.RunMechanic();
                Timer = StartTime;
            }
        }
        if (Timer2 <= 0)
        {
            ProjectileMechanic.RunMechanic();
            Timer2 = StartTime2;
        }

    }
    void BehaviorFour()
    {
        // Mass AoE and Projectile
        Timer -= DT;
        Timer2 -= DT;
        if (Timer <= 0)
        {
            ProjectileMechanic.RunMechanic();
            Timer = StartTime;
        }
        if (Timer2 <= 0)
        {
            AoeMechanic.RunMechanic();
            BoulderFallMechanic.RunMechanic();
            Timer2 = StartTime2;
        }

    }

    void BehaviorFive()
    {
        // Earthquake Slamming
        Timer -= DT;
        Timer2 -= DT;
        if (Timer <= 0)
        {
            Turning.IsTurning = true;
            Turning.AdjustTimer = 0;
            if (Turning.FOVCheck(15))
            {
                Turning.IsTurning = false;
                FistSlamMechanic.RunMechanic();
                Timer = StartTime / 2;
            }
                    }
        if (Timer2 <= 0)
        {
            BoulderFallMechanic.RunMechanic();
            Timer2 = StartTime / 2;
        }
    }

    public void PickBehavior()
    {
        Behaviour = Random.Range(1, 3 + State);
        behaviorTimer = BehaviorStart;
    }


    // Update is called once per frame
    void Update()
    {
        DT = Time.deltaTime;
        if (Health.Health <= 700) { State = 1;  }
        
        if (Health.Health <= 400) { State = 2; }

        if (Health.ResistDamage > 0) { behaviorTimer -= DT; }
        if (Health.ResistDamage == 0) { Turning.AdjustTimer = 2; }
        
        
        if(behaviorTimer <= 0)
        {
<<<<<<< HEAD
            PickBehavior();
=======
            Behaviour++;
           // Behaviour = Random.Range(1, 3 + State);
            behaviorTimer = BehaviorStart;
>>>>>>> 7958c4708b97ee94427acd8632546b39f99ee9c9
        }

        if (Behaviour == 1) {  BehaviorOne(); }
        if (Behaviour == 2) { BehaviorTwo(); }
        if (Behaviour == 3) { BehaviorThree(); }
        if (Behaviour == 4) { BehaviorFour(); }
        if (Behaviour == 5) { BehaviorFive(); }


        // -----------SWITCH METHOD ---------------
        //Timer -= DT;

        //if (Timer <= 0)
        //{
        //    Timer = StartTime;
        //    int DoBlank = Random.Range(0, (1 + State));
        //    switch (DoBlank)
        //    {
        //        case 0:
        //            ProjectileMechanic.RunMechanic();
        //            break;

        //        case 1:
        //            BoulderFallMechanic.RunMechanic();
        //            break;
        //        case 2:
        //            AoeMechanic.RunMechanic();
        //            break;
        //            // -FIST SLAM-
        //            //case 3:
        //            //    FistSlamMechanic.RunMechanic();
        //            //    break;
        //    }

        //}
        //if (State == 2)
        //{
        //    Timer2 -= DT;
        //    if (Timer2 <= 0)
        //    {
        //        Timer2 = StartTime;
        //        int DoBlank2 = Random.Range(0, (1 + State));
        //        switch (DoBlank2)
        //        {
        //            case 0:
        //                AoeMechanic.RunMechanic();
        //                break;

        //            case 1:
        //                BoulderFallMechanic.RunMechanic();
        //                break;
        //            case 2:
        //                ProjectileMechanic.RunMechanic();
        //                break;
        //            // -FIST SLAM-
        //           //case 3:
        //           //    FistSlamMechanic.RunMechanic();
        //           //    break;
        //        }

        //    }

        // -WIPE MECHANIC -
        if(State == 2)
        {
            WipeTimer -= DT;
            if (WipeTimer <= 0)
            {
                //  Debug.Log("Charging...");
                Debug.DrawLine(WipeMechanic.LazerHead.transform.position, WipeMechanic.Player.transform.position);
                WipeDelay -= DT;
                if (WipeDelay <= 0)
                {
                    //Debug.Log("Firing");
                    WipeMechanic.RunMechanic();
                    WipeDelay = StartDelay;
                    WipeTimer = StartWipe;
                }

            }
        }
        

    }


    }

