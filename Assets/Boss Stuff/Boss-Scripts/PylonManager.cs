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
        DelayTimer = Health.VulnerableTime;
        DelayStart = DelayTimer;
    }
	
	// Update is called once per frame
	void Update ()
    {
        DT = DeltaTime.DT;
        if (PylonCount <= 0)
        {
            Matt = true;
            Health.ResistDamage = 0;
            DelayTimer -= DT;
            if(DelayTimer <= 0)
            {
                Matt2 = false;
                NeedReset = true;
                PylonCount = 4;
                DelayTimer = DelayStart;
            }
           
            
        }
        if (Matt == true && Matt2 == false)
        {
           
            Matt2 = true;
            Matt = false;
           // Sound.Play();
        }


	}
}
