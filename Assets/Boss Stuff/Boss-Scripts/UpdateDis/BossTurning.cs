﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BossTurning : MonoBehaviour
{
    public float Speed;
    Rigidbody rb;
    public GameObject Player;
    //public GameObject Boss;
    public bool IsTurning = false;
    public float AdjustTimer;
    private float AdjustStart;
    public bool Direction = false; // Right - false : Left - true
    public float AngleBtwn;
    private TimeManager DeltaTime;
    float DT;

    Vector2 BossPos;
    Vector2 PlayerPoS;

    Animator Anim;
    // Use this for initialization
    public float TurningFloat;



    void Start ()
    {
        Anim = GetComponent<Animator>();
        rb = GetComponent<Rigidbody>();
        AdjustStart = AdjustTimer;
        DeltaTime = TimeManager.FindTimeManager();
	}


    public bool FOVCheck(float FOV)
    {
        //Vector3 Dir = (Player.transform.position - transform.position).normalized;
        //var DotVar = Vector3.Dot(transform.forward, Dir);
        BossPos = new Vector2(transform.position.x, transform.position.z);
        PlayerPoS = new Vector2(Player.transform.position.x, Player.transform.position.z);
        Vector2 Dir = (PlayerPoS - BossPos).normalized;
        Vector3 something = new Vector3(Dir.x, transform.position.y, Dir.y);
        
        float Rad = FOV * Mathf.Deg2Rad;
        var DotVar = Vector3.Dot(transform.forward, something);
        var CosVar = Mathf.Cos(Rad / 2);

        
        return (DotVar > CosVar);
    }


	// Update is called once per frame
	void Update ()
    {
        DT = DeltaTime.DT;

        
        Vector3 forward = transform.TransformDirection(Vector3.forward);
        Vector3 toOther = Player.transform.position - transform.position;
        //if (Vector3.Dot(forward, toOther) < 0)
        //{
            
        //    IsTurning = true;
            
        //}
        if (!FOVCheck(120))
        {
            IsTurning = true;
        }

       
       
            Vector3 Right = transform.TransformDirection(Vector3.right);
            Vector3 toOtherRight = Player.transform.position - transform.position;
            if (Vector3.Dot(Right, toOther) < 0)
            {
                Direction = false;
            }
            else
            {
                Direction = true;
            }

        TurningFloat = Vector3.Dot(Right, toOther);

        if (IsTurning == true)
        {
            if (FOVCheck(20)) { IsTurning = false; Anim.SetTrigger("StopTurning"); }
            //AdjustTimer -= DT;
            //if(AdjustTimer <= 0)
            //{

            Anim.SetFloat("Turn", TurningFloat);

                if (Direction) { transform.Rotate(0, Speed, 0);  }
                if (!Direction) { transform.Rotate(0, -Speed, 0);  }

               



           // }
           
           
            
        }
       









    }
}