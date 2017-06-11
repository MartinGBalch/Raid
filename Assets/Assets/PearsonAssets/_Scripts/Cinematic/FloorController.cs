using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FloorController : MonoBehaviour {
    private BossStateManagerTwo BossState;
    bool fall;
    public float falldelay;
    public float fallspeed,raisespeed;
    float falltime;
    public GameObject platforms;
    public GameObject smallPads;
    private ParticleSystem dust;
    private TimeManager DT;
    bool raise;
    bool grow = true;
	// Use this for initialization
	void Start () {
        DT = FindObjectOfType<TimeManager>();
        dust = GetComponent<ParticleSystem>();
        BossState = FindObjectOfType<BossStateManagerTwo>();
	}
	
	// Update is called once per frame
	void Update ()
    {
        if(BossState.State == 2)
        {
            if(fall == false)
            {
                falltime = falldelay;
                fall = true;
                raise = true;
                if (dust.isPlaying == false)
                {
                    dust.Play();
                }
            }
            falltime -= DT.DT;
            
            if(falltime <= 0)
            {
                if (fall)
                {
                    if (falltime > -9)
                    {
                        transform.position -= new Vector3(0, DT.DT * fallspeed, 0);
                    }
                }
                if (raise)
                {
                    platforms.transform.position += new Vector3(0, DT.DT * raisespeed, 0);
                    platforms.transform.position = new Vector3(platforms.transform.position.x, Mathf.Clamp(platforms.transform.position.y, 9.5f, 10.5f), platforms.transform.position.z);
                    if(platforms.transform.position.y > 10.49f)
                    {
                        raise = false;
                    }
                }
                else
                {
                    if (grow)
                    {
                        if (smallPads.transform.localScale.x > .99f && smallPads.transform.localScale.y > .99f && smallPads.transform.localScale.z > .99f)
                        {
                            grow = false;
                        }
                        
                        smallPads.transform.localScale += new Vector3(DT.DT * 3f, DT.DT * 3f, DT.DT * 3f);
                        smallPads.transform.localScale = new Vector3(Mathf.Clamp(smallPads.transform.localScale.x, 0, 1), Mathf.Clamp(platforms.transform.position.y, 0,1), Mathf.Clamp(smallPads.transform.localScale.z, 0, 1));
                    }
                }
                
            }
            
        }
		
	}
}
