﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FistCollision : MonoBehaviour {

    public float timer;
    bool IsDamage = false;
    private float ActualTimer;
    public float Dmg;
    private TimeManager DeltaTime;
    float DT;
    private GameObject hit;
    public ParticleSystem poof;
    private CameraShake Shake;
    
    void Start ()
    {
        ActualTimer = timer;
        DeltaTime = TimeManager.FindTimeManager();
        Shake = FindObjectOfType<CameraShake>();
        hit = GameObject.FindGameObjectWithTag("Hitter");

    }

    private void Awake()
    {

    }

    void OnTriggerStay(Collider collider)
    {
        if (collider.tag == "Player")
        {
            var player = collider.GetComponent<PlayerHealth>();


            if ( player != null)
            {
                player.TakeDamage(Dmg);
                IsDamage = false;
                Destroy(gameObject);
               
            }
        }
            
    }

    // Update is called once per frame
    void Update()
    {
        //DT = DeltaTime.DT;
        //ActualTimer -= DT;

        //if(ActualTimer <= 0)
        //{
           
        //    IsDamage = true;
        //}
        
        
        Shake.StartShake(Shake.SlamProperties);

        if (!poof.isPlaying)
        {
            poof.Play();
        }

        Destroy(gameObject, 1);
       

        
       
    }
}
