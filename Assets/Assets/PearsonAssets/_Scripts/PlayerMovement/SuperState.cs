﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SuperState : MonoBehaviour
{

    public ThirdPersonPlayerController Player;
    public float SlashTime;
    private TimeManager DeltaTime;
    private IceSpawn ice;
    float DT;
    public bool StopSuper;
    public int Charge; // 1 = fire, 2 = darkness, 3 = electric, 4 = water 0 = NULL
    public float SlashTimer, DarknessTimer, ElecticityTimer, WaterTimer;
    public enum States
    {
        NullState,
        DarknessState,
        FireState,
        ElectricState,
        IceState,
        WaitingState,
        IdleState,
    }

    public States CurrentSuperState;
    // Use this for initialization
    void Start()
    {
        ice = FindObjectOfType<IceSpawn>();
        DeltaTime = FindObjectOfType<TimeManager>();
        Player = FindObjectOfType<ThirdPersonPlayerController>();
    }
    public void DoNull()
    {

    }
    public void DoDarkness()
    {

        SlashTime -= DT;
        if (SlashTime <= 0)
        {
            Player.correct = true;
        }
        if (SlashTime <= -.1f)
        {
            Player.Objects.SuperChargeSource.Stop();
            Player.beginSuper = true;
            Player.Objects.SuperCharged[Charge - 1].Stop();
            Player.MV.BirdSuper = false;
            Player.correct = false;
            Player.MV.inSuper = false;
            Player.anim.SetTrigger("EndSuper");
            Player.anim.SetInteger("SuperNumb", 0);
            Player.StopSuper = true;
            CurrentSuperState = States.WaitingState;
        }
    }
    public void DoElectricity()
    {



        SlashTime -= DT;
        if (SlashTime <= 0)
        {
            Player.correct = true;
        }
        if (SlashTime <= -.5f)
        {
            Player.Objects.SuperChargeSource.Stop();
            Player.beginSuper = true;
            Player.Objects.SuperCharged[Charge - 1].Stop();
            Player.correct = false;
            Player.MV.BirdSuper = false;
            Player.MV.inSuper = false;
            Player.anim.SetTrigger("EndSuper");
            Player.anim.SetInteger("SuperNumb", 0);
            Player.StopSuper = true;

            CurrentSuperState = States.WaitingState;
        }
    }
    public void DoFire()
    {

        SlashTime -= DT;
        if (SlashTime <= 0)
        {
            Player.correct = true;
        }
        if (SlashTime <= -.1f)
        {
            Player.Objects.SuperChargeSource.Stop();
            Player.beginSuper = true;
            Player.Objects.SuperCharged[Charge - 1].Stop();

            Player.MV.BirdSuper = false;
            Player.Objects.Laser.SetActive(false);
            Player.correct = false;
            Player.MV.inSuper = false;
            Player.anim.SetTrigger("EndSuper");
            Player.anim.SetInteger("SuperNumb", 0);
            Player.StopSuper = true;
            Player.Objects.LaserParticle.Stop();
            Player.Objects.LaserParticle.GetComponent<ParticleSeek1>().enabled = false;
            CurrentSuperState = States.WaitingState;
        }
    }
    public void DoIce()
    {

        SlashTime -= DT;
        if (SlashTime <= 0)
        {
            Player.correct = true;
        }
        if (SlashTime <= -.1f)
        {
            Player.Objects.SuperChargeSource.Stop();
            Player.beginSuper = true;
            Player.Objects.SuperCharged[Charge - 1].Stop();
            Player.MV.BirdSuper = false;
            Player.correct = false;
            Player.MV.inSuper = false;
            Player.anim.SetTrigger("EndSuper");
            Player.anim.SetInteger("SuperNumb", 0);
            Player.StopSuper = true;

            CurrentSuperState = States.WaitingState;
        }
    }


    public void watchPlayer()
    {

        if (Player.SuperStateChange == true)
        {
            Player.SuperStateChange = false;
            Player.Objects.Controller.Attack = false;
            Player.MV.mouseAttack = false;



            switch (Charge)
            {
                case 0:
                    CurrentSuperState = States.WaitingState;

                    break;

                case 1:
                    CurrentSuperState = States.ElectricState;

                    Player.anim.SetInteger("SuperNumb", 1);
                    SlashTime = SlashTimer;
                    break;

                case 2:
                    CurrentSuperState = States.DarknessState;

                    Player.anim.SetInteger("SuperNumb", 2);
                    SlashTime = DarknessTimer;
                    break;

                case 3:
                    CurrentSuperState = States.FireState;

                    Player.anim.SetInteger("SuperNumb", 3);
                    Player.MV.BirdSuper = true;
                    SlashTime = ElecticityTimer;
                    break;

                case 4:
                    CurrentSuperState = States.IceState;
                    SlashTime = WaterTimer;
                    ice.launch = true;
                    Player.anim.SetInteger("SuperNumb", 4);
                    break;
            }


        }
    }
    public GameObject BlackHole, placeholder;
    // Update is called once per frame
    void Update()
    {
        watchPlayer();
        DT = DeltaTime.DT;
        switch (CurrentSuperState)
        {
            case States.NullState:
                DoNull();
                break;
            case States.DarknessState:
                DoDarkness();
                break;
            case States.FireState:
                DoFire();
                break;
            case States.ElectricState:
                DoElectricity();
                break;
            case States.IceState:
                DoIce();
                break;

        }
    }

    public void SuperDarkness()
    {
        ThirdPersonCameraController cam = FindObjectOfType<ThirdPersonCameraController>();
        if (cam.target != null)
        {
            GameObject Hole = Instantiate(BlackHole, cam.target.transform.position , transform.rotation);
            Hole.GetComponent<SuperBlackHole>().Target = cam.target;
        }
        else
        {

            GameObject Hole = Instantiate(BlackHole,placeholder.transform.position, transform.rotation);
            Hole.transform.forward = transform.forward;
            Hole.GetComponent<SuperBlackHole>().Target = null;
        }

    }
}