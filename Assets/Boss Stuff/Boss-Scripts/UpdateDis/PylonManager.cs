using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PylonManager : MonoBehaviour {


    private TimeManager DeltaTime;
    public int PylonCount = 4;
    public bool NeedReset = false;
    public GameObject Boss;
    BossHealth Health;
    AudioSource Sound;
    public float DelayTimer;
    private float DelayStart;
    float DT;
    bool Matt = false;
    bool Matt2 = false;
    public OverheadLaser laser;

    public GameObject[] Pylon;
    // Use this for initialization
    void Start ()
    {
        Pylon = GameObject.FindGameObjectsWithTag("Pylon");

        Sound = GetComponent<AudioSource>();
        DeltaTime = TimeManager.FindTimeManager();
        laser = FindObjectOfType<OverheadLaser>();
        Health = Boss.GetComponent<BossHealth>();
       // DelayTimer = Health.VulnerableTime;
        DelayStart = DelayTimer;
    }
	
 

    public void Dela()
    {
       for(int i = 0; i < Pylon.Length; i++)
        {
            Pylon[i].GetComponent<BossPartsHealth>().ResetPylon();
        }
       
       
        laser.charge = true;
    }

    void TurnOffAnimRun() { AnimRun = false; }

    public bool AnimRun = false;
	// Update is called once per frame
	void Update ()
    {
        DT = DeltaTime.DT;
        if (Matt == true)
        {
            Health.ResistDamage = 0;

            if(Health.HealthStage != 2)
            {
                if(AnimRun == false)
                {
                    Invoke("TurnOffAnimRun", 12);
                    Health.RunAnim();
                    AnimRun = true;
                }
               
            }
            



            Matt = false;
            // Sound.Play();
        }


        if (PylonCount > 0)
        {
            Health.ResistDamage = 500;
        }


        if (PylonCount <= 0)
        {
            Matt = true;

            if (Health.HealthStage == 2) { Health.VulnerableTime = Mathf.Infinity; }

            //DelayTimer -= DT;
            //if(DelayTimer <= 0)
            //{
            //    // Take out Timer and call the Pylon Reset in Health script
            //    Matt2 = false;
            //    NeedReset = true;
            //    PylonCount = 4;
            //    DelayTimer = DelayStart;
            //}



            //DelayTimer -= DT;
            //if (DelayTimer <= 0)
            //{
            //    Matt2 = false;
            //    NeedReset = true;
            //    PylonCount = 4;
            //    DelayTimer = DelayStart;
               
            //}


        }
        else
        {
            Health.VulnerableTime = Health.StartTimer;
            Health.ResistDamage = 500;
        }
       


	}
}
