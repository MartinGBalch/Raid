using System.Collections;
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
        SlashTime = -6;
        CurrentSuperState = States.WaitingState;
           ice = FindObjectOfType<IceSpawn>();
        DeltaTime = FindObjectOfType<TimeManager>();
        Player = FindObjectOfType<ThirdPersonPlayerController>();
    }
    public void DoNull()
    {
        Player.correct = false;
    }
    public void DoDarkness()
    {
        
        if (SlashTime <= 0)
        {
            Player.correct = true;
        }
        if (SlashTime <= -.1f)
        {
            Player.Objects.SuperChargeSource.Stop();
      
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

        
        if (SlashTime <= 0)
        {
            Player.correct = true;
        }
        if (SlashTime <= -.5f)
        {
            Player.Objects.SuperChargeSource.Stop();
            
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
        if (SlashTime <= 0)
        {
            Player.correct = true;
        }
        if (SlashTime <= -.1f)
        {
            Player.Objects.SuperChargeSource.Stop();
            
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
        if (SlashTime <= 0)
        {
            Player.correct = true;
        }
        if (SlashTime <= -.1f)
        {
            Player.Objects.SuperChargeSource.Stop();
           
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

    public float abilitytime;
    public float timer;
    public int abilityCharge;
    public float DebuffTimer;
    public float timer2;
    public int debuffCharge;
    public void watchPlayer()
    {
        SlashTime -= DeltaTime.DT;
        timer -= DT;
        timer2 -= DT;
        if (Player.SuperStateChange == true && CurrentSuperState == States.WaitingState && SlashTime < -5f)
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

        switch (abilityCharge)
        {
            case 0:
                
                    for (int i = 0; i < Player.Abilites.Length; i++)
                    {
                        Player.Abilites[i] = false;
                    }
               
                break;

            case 1:
                if (timer > 0)
                {

                    for (int i = 0; i < Player.Abilites.Length; i++)
                    {
                        Player.Abilites[i] = false;
                    }
                    Player.Abilites[0] = true;
                }
                else
                {
                    abilityCharge = 0;
                }
                break;

            case 2:
                if (timer > 0)
                {

                    for (int i = 0; i < Player.Abilites.Length; i++)
                    {
                        Player.Abilites[i] = false;
                    }
                    Player.Abilites[1] = true;
                }
                else
                {
                    abilityCharge = 0;
                }
                break;

            case 3:
                if (timer > 0)
                {

                    for (int i = 0; i < Player.Abilites.Length; i++)
                    {
                        Player.Abilites[i] = false;
                    }
                    Player.Abilites[2] = true;
                }
                else
                {
                    abilityCharge = 0;
                }
                break;

            case 4:
                if (timer > 0)
                {

                    for (int i = 0; i < Player.Abilites.Length; i++)
                    {
                        Player.Abilites[i] = false;
                    }
                    Player.Abilites[3] = true;
                }
                else
                {
                    abilityCharge = 0;
                }
                break;
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
