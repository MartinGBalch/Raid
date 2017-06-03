using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BirdMotor : MonoBehaviour
{
    public GameObject Player;
    public GameObject Camera;
    public ThirdPersonCameraController CamController;
    private ThirdPersonPlayerController PlayerController;
    public EnergyCharge Energy;
    public ParticleSystem PS, Charge1, charge2;
    public Vector3 velocityCamSmooth = Vector3.zero;
    [SerializeField]
    private float BirdSmoothDampAttack, BirdSmoothDampIdle;
    [SerializeField]
    private float SetcamSmoothDampTime = 1;
    [SerializeField]
    public Transform Hoveroffset, SuperSet;
    public AudioSource Chargeer, FireSource;
    public AudioClip ChargSound, FireSound;

    public ControllerSupport Controller;

    enum States
    {
        idleState,
        idle,
        idleAfk,
        AttackState,
        ChargeState,
        SuperState,
    }

    States CurrentState, IdleState;

    void Start()
    {
       // offset = Player.transform.position + transform.position;
        SetcamSmoothDampTime = BirdSmoothDampIdle;
        CurrentState = States.idleState;
        IdleState = States.idle;
       // CamController = Camera.GetComponent<ThirdPersonCameraController>();
        PlayerController = Player.GetComponent<ThirdPersonPlayerController>();
       
    }

    public void DoIdleState()
    {
        switch (IdleState)
        {
            case States.idle:
                DoIdle();
                break;
            case States.idleAfk:
                DoIdleAfk();
                break;

        }
    }
    public float x, y;

    public bool ControllerFire, ControllerCharge;
   
    private static float ClampAngle(float angle, float min, float max)
    {
        if (angle < -360)
        {
            angle += 360;
        }
        if (angle > 360)
        {
            angle -= 360;
        }
        return Mathf.Clamp(angle, min, max);
    }
    public void smoothPosition(Vector3 fromPos, Vector3 toPos)
    {
        transform.position = Vector3.SmoothDamp(fromPos, toPos, ref velocityCamSmooth, SetcamSmoothDampTime);
    }
    public float HorzSpeed, distance, MinDistance, MaxDistance;
    public float tempDamp;
    public void DoIdle()
    {
      
        Hit = false;
        if (Vector3.Distance(transform.position, Player.transform.position) <= 5)
        {
            canAttack = true;
        }

        Vector3 oldPos = transform.position;
        smoothPosition(transform.position, Hoveroffset.position);
        Vector3 dirMov = (transform.position - oldPos).normalized;
       
        if ( Vector3.Distance(transform.position, Hoveroffset.position) > 1.5f)
        {
            var fwd = transform.forward;


            var lkat = Vector3.Slerp(fwd, dirMov, DT * 2);

            transform.LookAt(lkat + transform.position, Vector3.up);
        }
        else
        {
            transform.rotation = Quaternion.RotateTowards(transform.rotation, Hoveroffset.rotation, DT * 40);
        }
        
    }
    public void DoIdleAfk()
    {
       
    }
    public float attackDamp;


    bool Hit;

    Vector3 killpos = Vector3.zero;
    Vector3 killOffset = Vector3.zero;
    public float attackDamage;
    public float ChargeAmount;
    public void ChargeAttack()
    {

            if (ChargeAmount <= Energy.Energy)
            {
                ChargeAmount += DT * 30;
            Charge1.Play();
            charge2.Play();
            Chargeer.PlayOneShot(ChargSound);
            }

            attackDamage = ChargeAmount;
            ChargeAmount = Mathf.Clamp(ChargeAmount, 20, 100);
            attackDamage = Mathf.Clamp(attackDamage, 0, 100);

    }
    float AttackTimer = 3;

    bool hitOnce = true;
    public void DoAttack()
    {
        if (TempTarget != null)
        {
            Vector3 offset = new Vector3(0, TempTarget.transform.localScale.y * 3, 0);
            killOffset = offset;
            if (Vector3.Distance(transform.position, TempTarget.transform.position) > (tempDistance / 2) && Hit == false)
            {

                //var fwd = transform.forward;

                //var direct = (TempTarget.transform.position - transform.position).normalized;

                //var lkat = Vector3.Slerp(fwd, direct, DT * tempDamp);

                //transform.LookAt(lkat + transform.position, Vector3.up);

                Vector3 oldPos = transform.position;
                transform.position = Vector3.Lerp(transform.position, TempTarget.transform.position, DT);
                Vector3 dirMov = (transform.position - oldPos).normalized;


                if (Vector3.Distance(transform.position, TempTarget.transform.position) < (tempDistance / 2) + 5)
                {

                    PS.simulationSpace = ParticleSystemSimulationSpace.World;
                    PS.Play();

                    FireSource.PlayOneShot(FireSound);
                    Chargeer.Stop();
                }

                transform.forward = Vector3.Slerp(transform.forward, dirMov, DT * attackDamp * 1.5f);

                if (Vector3.Distance(transform.position, TempTarget.transform.position) < (tempDistance / 2) + 1.5f)
                {
                    //RaycastHit hit;

                    //if (Physics.Linecast(transform.position, TempTarget.transform.position, out hit))
                    //{
                    //    if (!Hit && hit.collider.GetComponent<IDamageable>() != null)
                    //    {

                    //        IDamageable dmg = hit.collider.GetComponent<IDamageable>();
                    //        killpos = hit.collider.transform.position;
                    //        killOffset = offset;
                    //        AttackTimer = 3;
                    //        Hit = true;
                    //        dmg.TakeDamage(attackDamage);
                    //        Energy.Energy = Energy.Energy - attackDamage;
                    //        attackDamage = 0;
                    //        ChargeAmount = 0;
                    //        Controller.Charge = false;

                    //    }

                    //}
                    //else
                    //{
                    //    if (!Hit && hit.collider.GetComponent<IDamageable>() != null)
                    //    {
                    if (hitOnce)
                    {
                        IDamageable dmg = TempTarget.GetComponent<IDamageable>();
                        killpos = TempTarget.transform.position;
                        killOffset = offset;
                        AttackTimer = 3;
                        Hit = true;
                        dmg.TakeDamage(attackDamage);
                        Energy.Energy = Energy.Energy - attackDamage;
                        attackDamage = 0;
                        ChargeAmount = 0;
                        Controller.Charge = false;
                        hitOnce = false;
                    }
                       // }
                    //}
                }
            }
            else
            {
                hitOnce = true;
                Vector3 oldPos = transform.position;
                transform.position = Vector3.MoveTowards(transform.position, (TempTarget.transform.position + killOffset), DT * 7);
                Vector3 dirMov = (transform.position - oldPos).normalized;
                transform.forward = Vector3.Slerp(transform.forward, dirMov, DT * attackDamp);
                AttackTimer -= DT;
                if (Vector3.Distance(transform.position, (TempTarget.transform.position + killOffset)) < 1 || AttackTimer < 0)
                {
                    CurrentState = States.idleState;
                }
            }
        }
        else
        {
            hitOnce = true;
            Vector3 oldPos = transform.position;
            transform.position = Vector3.MoveTowards(transform.position, (killpos + killOffset), DT * 7);
            Vector3 dirMov = (transform.position - oldPos).normalized;
            transform.forward = Vector3.Slerp(transform.forward, dirMov, DT * attackDamp);
            AttackTimer -= DT;
            if (Vector3.Distance(transform.position, (killpos + killOffset)) < 1 || AttackTimer < 0)
            {
                CurrentState = States.idleState;
            }

            //SetcamSmoothDampTime = BirdSmoothDampIdle;
        }
    }
    public bool fire;
    private GameObject TempTarget;
    private float tempDistance;
    private bool Charge, Fire;
    bool canAttack = true;
    public void KeyInput()
    {
        Charge = Input.GetMouseButton(1) || Controller.Charge;
        Fire = (Input.GetMouseButtonUp(1) || Controller.Fire) && CurrentState != States.AttackState && canAttack;

        if (Energy.Energy >= 20 )
        {
            if (Charge && PlayerController.BirdSuper == false)
            {
                ChargeAttack();
            }
            else
            {
                Charge1.Stop();
                charge2.Stop();
            }

            if (Fire)
            {
                if (CamController.target != null && PlayerController.BirdSuper == false)
                {
                    TempTarget = CamController.target.gameObject;
                    SetcamSmoothDampTime = BirdSmoothDampAttack;
                    tempDistance = Vector3.Distance(transform.position, TempTarget.transform.position);
                    CurrentState = States.AttackState;
                    Fire = false;
                    Controller.Fire = false;
                    canAttack = false;
                }
            
               
            }
        }
        if (PlayerController.BirdSuper == true)
        {
            CurrentState = States.SuperState;

        }

    }
    void DoSuper()
    {
        if (Vector3.Distance(transform.position, SuperSet.position) >= -2f && Vector3.Distance(transform.position, SuperSet.position) <= 2f)
        {
            transform.position = Vector3.MoveTowards(transform.position, SuperSet.position,4);

            transform.rotation = Quaternion.RotateTowards(transform.rotation, SuperSet.rotation,  4);
        }
        else
        {
            transform.position = Vector3.MoveTowards(transform.position, SuperSet.position, DT * 40);
            transform.rotation = Quaternion.RotateTowards(transform.rotation, SuperSet.rotation, DT * 40);

        }

        if(PlayerController.inSuper == false)
        {
            CurrentState = States.idleState;
        }
    }
    float DT;

    private void Update()
    {
        KeyInput();
    }

    void FixedUpdate()
    {
       
        DT = Time.deltaTime;
        switch(CurrentState)
        {
            case States.idleState:
                DoIdle();
                break;

           
            case States.AttackState:
                DoAttack();
                break;

            case States.SuperState:
                DoSuper();
                break;
        }
    }
}
