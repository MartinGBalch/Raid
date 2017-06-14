﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FloorController : MonoBehaviour {
    public BossStateManagerTwo BossState;
    bool fall;
    public float falldelay;
    public float fallspeed,raisespeed;
    float falltime;
    public CameraShake shake;
    public GameObject platforms;
    public GameObject smallPads;
    public GameObject[] smallerPads;
    public ParticleSystem dust;
    private TimeManager DT;
    bool raise;
    bool grow = true;
    public GameObject[] props;
    public ParticleSystem[] element;
    public GameObject floor;
    // Use this for initialization
    void Start () {
        DT = FindObjectOfType<TimeManager>();
        props = GameObject.FindGameObjectsWithTag("Props");
       // BossState = FindObjectOfType<BossStateManagerTwo>();
        shake = FindObjectOfType<CameraShake>();
	}

    // Update is called once per frame
    void Update()
    {
        if (BossState != null)
        {
            if (BossState.State == 2)
            {
                if (fall == false)
                {
                    falltime = falldelay;
                    fall = true;
                    raise = true;
                    //for(int i = 0; i < props.Length; i++)
                    //{
                    //    props[i].SetActive(false);
                    //}
                    shake.StartShake(shake.GroundFallProperties);
                    floor.SetActive(false);
                    if (dust.isPlaying == false)
                    {
                        dust.Play();
                    }
                    for (int i = 0; i < element.Length; i++)
                    {
                        if (element[i].isPlaying == false)
                        {
                            element[i].Play();
                        }
                    }

                }
                falltime -= DT.DT;

                if (falltime <= 0)
                {
                    if (fall)
                    {
                        if (falltime > -9)
                        {
                            //transform.position -= new Vector3(0, DT.DT * fallspeed, 0);
                        }
                    }
                    if (raise)
                    {

                        platforms.transform.position += new Vector3(0, DT.DT * raisespeed, 0);
                        platforms.transform.position = new Vector3(platforms.transform.position.x, Mathf.Clamp(platforms.transform.position.y, 9.5f, 10.5f), platforms.transform.position.z);
                        if (platforms.transform.position.y > 10.49f)
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
                                for (int i = 0; i < smallerPads.Length; i++)
                                {
                                    smallerPads[i].GetComponent<MeshCollider>().enabled = true;
                                }

                                grow = false;
                            }

                            smallPads.transform.localScale += new Vector3(DT.DT * 3f, DT.DT * 3f, DT.DT * 3f);
                            smallPads.transform.localScale = new Vector3(Mathf.Clamp(smallPads.transform.localScale.x, 0, 1), Mathf.Clamp(platforms.transform.position.y, 0, 1), Mathf.Clamp(smallPads.transform.localScale.z, 0, 1));
                        }
                    }

                }

            }

        }
    }
}