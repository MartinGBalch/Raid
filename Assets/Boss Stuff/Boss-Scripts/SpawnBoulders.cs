﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpawnBoulders : MonoBehaviour {


    public GameObject AoeEffect;
    public float spawnCount;
    public float CoolDown;
    private float StartCD;
    public float Range;
    public float heightMax;
    public float heightMin;

    public void RunMechanic()
    {
       
            for (int i = 0; i < spawnCount; i++)
            {
                float RandX = Random.Range(-Range, Range);
                float RandZ = Random.Range(-Range, Range);
                float RandY = Random.Range(heightMin, heightMax);
                var AoE = AoeEffect;
                AoE.transform.position = new Vector3(transform.position.x + RandX, RandY, transform.position.z + RandZ);
                Instantiate(AoE);
            }
        
    }
    // Use this for initialization
    void Start ()
    {
       
    }
	
	// Update is called once per frame
	void Update () {
		
	}
}
