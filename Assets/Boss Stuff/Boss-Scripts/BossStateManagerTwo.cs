using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BossStateManagerTwo : MonoBehaviour {

    AoEAttack AoeMechanic;
    FistSlam FistSlamMechanic;
    SpawnBoulders BoulderFallMechanic;
    Projectile ProjectileMechanic;
    BossHealth Health;

    public GameObject[] Pylon;
    private GameObject PlaceHolder;
    private Transform[] StartPos;
    public int PylonCount;

    public int State;

    public float Timer;
    private float StartTime;
    public float Timer2;
    private float StartTime2;

    bool NeedsToUpdate = false;

    void UpdatePlayArea()
    {
        for (int i = 0; i < Pylon.Length; i++)
        {

            Instantiate(PlaceHolder, StartPos[i]);
        }
        NeedsToUpdate = false;

    }


    void Awake()
    {
        PlaceHolder = Pylon[0];
        PylonCount = Pylon.Length;
        for (int i = 0; i < Pylon.Length; i++)
        {
            StartPos[i] = Pylon[i].transform;
        }

        State = 0;
        StartTime = Timer;
        StartTime2 = Timer2;
        Health = GetComponent<BossHealth>();
        AoeMechanic = GetComponent<AoEAttack>();
        FistSlamMechanic = GetComponent<FistSlam>();
        BoulderFallMechanic = GetComponent<SpawnBoulders>();
        ProjectileMechanic = GetComponent<Projectile>();
    }

    // Update is called once per frame
    void Update()
    {
        if (Health.Health <= 700) { State = 1; NeedsToUpdate = true; }

        if (Health.Health <= 400) { State = 2; NeedsToUpdate = true; }

        if (NeedsToUpdate == true) { UpdatePlayArea(); }
        Timer -= Time.deltaTime;

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
                    FistSlamMechanic.RunMechanic();
                    break;
                case 2:
                    BoulderFallMechanic.RunMechanic();
                    break;
                case 3:
                    AoeMechanic.RunMechanic();
                    break;
            }

        }
        if (State == 2)
        {
            Timer2 -= Time.deltaTime;
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
                        FistSlamMechanic.RunMechanic();
                        break;
                    case 2:
                        BoulderFallMechanic.RunMechanic();
                        break;
                    case 3:
                        ProjectileMechanic.RunMechanic();
                        break;
                }

            }
        }


    }
}
