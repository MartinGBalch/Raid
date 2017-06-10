using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FloorController : MonoBehaviour {
    private BossStateManagerTwo BossState;
    bool fall;
    public float falldelay;
    public float fallspeed;
    float falltime;
    public GameObject platforms;
    private TimeManager DT;
	// Use this for initialization
	void Start () {
        BossState = FindObjectOfType<BossStateManagerTwo>();
	}
	
	// Update is called once per frame
	void Update ()
    {
        if(BossState.State == 3)
        {
            if(fall == false)
            {
                falltime = falldelay;
                fall = false;
            }
            falltime -= DT.DT;
            if(falltime <= 0)
            {
                transform.position -= new Vector3(0, DT.DT * fallspeed, 0);

                platforms.transform.position = new Vector3(platforms.transform.position.x, Mathf.Clamp(platforms.transform.position.y, -12.2f, -10.5f), 0);
            }
            
        }
		
	}
}
