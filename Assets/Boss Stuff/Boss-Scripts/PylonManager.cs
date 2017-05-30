using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PylonManager : MonoBehaviour {

    public int PylonCount = 4;
    public bool NeedReset = false;
    public GameObject Boss;
    BossHealth Health;
    public float DelayTimer;
    private float DelayStart;
    // Use this for initialization
    void Start ()
    {
        DelayStart = DelayTimer;
        Health = Boss.GetComponent<BossHealth>();
    }
	
	// Update is called once per frame
	void Update ()
    {
        if (PylonCount <= 0)
        {
            Health.ResistDamage = 0;
            DelayTimer -= Time.deltaTime;
            if(DelayTimer <= 0)
            {
                NeedReset = true;
                PylonCount = 4;
                DelayTimer = DelayStart;
            }
           
            
        }

	}
}
