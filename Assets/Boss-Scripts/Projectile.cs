using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Projectile : MonoBehaviour {

    public GameObject Bullet;
    public float CoolDown;
    private float StartCD;
    private float ArcDegree;
    public int BulletCount;
    Rigidbody rb;
    public float bulletSpeed;
    Quaternion rotationCache;
    public float BulletLifetime;
	// Use this for initialization
	void Start ()
    {
        rb = Bullet.GetComponent<Rigidbody>();
        StartCD = CoolDown;
        ArcDegree = 180 / BulletCount;
	}
	
	// Update is called once per frame
	void Update ()
    {
        CoolDown -= Time.deltaTime;
        if(CoolDown <= 0)
        {
            rotationCache = transform.rotation;
            CoolDown = StartCD;
            for(int i = 0; i < BulletCount; i++)
            {
                transform.Rotate(new Vector3(0, ArcDegree * i, 0));
                var projectile = (GameObject)Instantiate(Bullet, transform.position,transform.rotation);
                projectile.GetComponent<Rigidbody>().velocity = (projectile.transform.forward )* bulletSpeed;
                Destroy(projectile, BulletLifetime);
                //Rigidbody PBR = projectile.GetComponent<Rigidbody>();
                //projectile.transform.position = transform.position;
                //Instantiate(projectile);
                
                //PBR.AddForce(transform.forward * bulletSpeed);

            }
            transform.rotation = rotationCache;
        }
	}
}
