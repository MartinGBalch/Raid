﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CollisionDMG : MonoBehaviour {


    private TimeManager DeltaTime;
    float DT;
    public float Dmg;
    float distDIF;
    public float LerpSpeed;
    Transform MyT;
    private float LifeTimeStart;
    public float LifeTime;
    void OnTriggerEnter(Collider collider)
    {
        if(collider.tag == "Player")
        {
            var player = collider.GetComponent<PlayerHealth>();
            if (player != null)
            {
                player.TakeDamage(Dmg);
                Destroy();
            }
        }
        if (collider.tag == "Pylon") { Destroy(gameObject); }
        if (collider.tag == "Pillar") { Destroy(gameObject); }

    }
    void Destroy()
    {
        gameObject.SetActive(false);
    }
    void OnEnable()
    {
        LifeTime = LifeTimeStart;
    }

    // Use this for initialization
    void Start()
    {
        DeltaTime = FindObjectOfType<TimeManager>();
        MyT = GetComponent<Transform>();
    }

    // Update is called once per frame
    void Update()
    {
        DT = DeltaTime.DT;
        LifeTime -= DT;
        if(LifeTime <=0)
        {
            Destroy();
        }

        RaycastHit hit;
        if (Physics.Raycast(MyT.position, -MyT.up, out hit, 50))
        {
            if (hit.collider.tag == "Floor")
            {
                
                distDIF = Mathf.Abs(hit.point.y - MyT.position.y);
              

                Vector3 POS = new Vector3(MyT.position.x, MyT.position.y - distDIF + (MyT.localScale.y / 2), MyT.position.z);


                MyT.position = Vector3.Lerp(MyT.position, POS, Time.deltaTime * LerpSpeed);
            }
           
            
        }
    }
}
