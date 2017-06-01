using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PylonManager : MonoBehaviour {


    private TimeManager DeltaTime;
    public int PylonCount = 4;
    public bool NeedReset = false;
    public GameObject Boss;
    BossHealth Health;
    public float DelayTimer;
    private float DelayStart;
    float DT;
    // Use this for initialization
    void Start ()
    {
        
    DeltaTime = FindObjectOfType<TimeManager>();
        DelayStart = DelayTimer;
        Health = Boss.GetComponent<BossHealth>();
    }
	
	// Update is called once per frame
	void Update ()
    {
        DT = DeltaTime.DT;
        if (PylonCount <= 0)
        {
            Health.ResistDamage = 0;
            DelayTimer -= DT;
            if(DelayTimer <= 0)
            {
                NeedReset = true;
                PylonCount = 4;
                DelayTimer = DelayStart;
            }
           
            
        }

	}
}
