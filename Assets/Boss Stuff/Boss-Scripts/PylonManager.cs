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
    // Use this for initialization
    void Start ()
    {
        Sound = GetComponent<AudioSource>();
        DeltaTime = FindObjectOfType<TimeManager>();
        
        Health = Boss.GetComponent<BossHealth>();
       // DelayTimer = Health.VulnerableTime;
        DelayStart = DelayTimer;
    }
	
    public void Dela()
    {
        Matt2 = false;
        NeedReset = true;
        PylonCount = 4;
    }

	// Update is called once per frame
	void Update ()
    {
        DT = DeltaTime.DT;
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


        }
        if (Matt == true && Matt2 == false)
        {
            Health.ResistDamage = 0;
            
            Health.RunAnim();
            
           
            Matt2 = true;
            Matt = false;
           // Sound.Play();
        }


	}
}
