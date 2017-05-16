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

    private float DT;
    public int State;

    public float Timer;
    private float StartTime;
    public float Timer2;
    private float StartTime2;
    public float WipeTimer;
    private float StartWipe;
    public float WipeDelay;
    private float StartDelay;
    void Awake()
    {
        
        State = 0;
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
        
    }
    void Start()
    {
        
    }


    // Update is called once per frame
    void Update()
    {
        DT = Time.deltaTime;
        if (Health.Health <= 700) { State = 1;  }

        if (Health.Health <= 400) { State = 2; }

       
        Timer -= DT;

        if (Timer <= 0)
        {
            Timer = StartTime;
            int DoBlank = Random.Range(0, (2 + State));
            switch (DoBlank)
            {
                case 0:
                    ProjectileMechanic.RunMechanic();
                    break;
                
                case 1:
                    BoulderFallMechanic.RunMechanic();
                    break;
                case 2:
                    AoeMechanic.RunMechanic();
                    break;
                    // -FIST SLAM-
                    //case 3:
                    //    FistSlamMechanic.RunMechanic();
                    //    break;
            }

        }
        if (State == 2)
        {
            Timer2 -= DT;
            if (Timer2 <= 0)
            {
                Timer2 = StartTime;
                int DoBlank2 = Random.Range(0, (2 + State));
                switch (DoBlank2)
                {
                    case 0:
                        AoeMechanic.RunMechanic();
                        break;
                   
                    case 1:
                        BoulderFallMechanic.RunMechanic();
                        break;
                    case 2:
                        ProjectileMechanic.RunMechanic();
                        break;
                    // -FIST SLAM-
                   //case 3:
                   //    FistSlamMechanic.RunMechanic();
                   //    break;
                }

            }

            // -WIPE MECHANIC -

            //WipeTimer -= DT;
            //if (WipeTimer <= 0)
            //{
            //  //  Debug.Log("Charging...");
            //    WipeDelay -= DT;
            //    if (WipeDelay <= 0)
            //    {
            //        //Debug.Log("Firing");
            //        WipeMechanic.RunMechanic();
            //        WipeDelay = StartDelay;
            //        WipeTimer = StartWipe;
            //    }

            //}

        }


    }
}
