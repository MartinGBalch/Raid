﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Projectile : MonoBehaviour {

    public GameObject Bullet;
    public GameObject Gun;

    List<GameObject> ListOFun;


    private float ArcDegree;
    public int BulletCount;
    private int StartBulletCount;
    Rigidbody rb;
    public float bulletSpeed;
    Quaternion rotationCache;
    public float BulletLifetime;
    public int PooledObjectCount;
    public void RunMechanic()
    {
        
            rotationCache = Gun.transform.rotation;
            
            for (int i = 0; i < BulletCount; i++)
            {
                for(int j = 0; j < ListOFun.Count; j++)
                {
                  if(!ListOFun[i].activeInHierarchy)
                    {
                      Gun.transform.Rotate(new Vector3(0, ArcDegree, 0));
                      ListOFun[i].transform.position = Gun.transform.position;
                      ListOFun[i].transform.rotation = Gun.transform.rotation;
                      ListOFun[i].GetComponent<Rigidbody>().velocity = (ListOFun[i].transform.forward * bulletSpeed);
                    }
                }
            Gun.transform.rotation = rotationCache;
            }
           
       

    }

	// Use this for initialization
	void Start ()
    {
        ListOFun = new List<GameObject>();
        for(int i = 0; i < PooledObjectCount; i++)
        {
            GameObject baby = (GameObject)Instantiate(Bullet);
            baby.SetActive(false);
            ListOFun.Add(baby);
        }
        rb = Bullet.GetComponent<Rigidbody>();
        
        ArcDegree = 180 / BulletCount;
        StartBulletCount = BulletCount;
	}
	
	
}
