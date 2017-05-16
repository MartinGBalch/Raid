using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BirdController : MonoBehaviour
{
    public GameObject Player;
    public GameObject Camera;
    public ThirdPersonCameraController CamController;
    private ThirdPersonPlayerController PlayerController;
    public EnergyCharge Energy;
    public ParticleSystem PS;
    public Vector3 velocityCamSmooth = Vector3.zero;
    [SerializeField]
    private float BirdSmoothDampAttack, BirdSmoothDampIdle;
    [SerializeField]
    private float SetcamSmoothDampTime = .1f;
    [SerializeField]


    ControllerSupport Controller;

    enum States
    {
        idleState,
        idle,
        idleAfk,
        AttackState,
        ChargeState,
    }

    States CurrentState, IdleState;

    void Start()
    {
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
        if(Vector3.Distance(transform.position, Player.transform.position) <= 6)
        {
            SetcamSmoothDampTime -= DT;
        }
        if (Vector3.Distance(transform.position, Player.transform.position) <=5)
        {
            canAttack = true;
        }
        x += HorzSpeed * distance * .05f;
        

        y = ClampAngle(y, 0, 80);

        Vector3 position;

        Quaternion rotation = Quaternion.Euler(y, x, 0);
        

        distance = Mathf.Clamp(distance, MinDistance, MaxDistance);
        

        Vector3 negDistance = new Vector3(0.0f, 3.0f, -distance);
        position = rotation * negDistance + Player.transform.position;
        
        tempDamp = Mathf.Clamp(tempDamp, 1, 20);
        
        Vector3 oldPos = transform.position;
        smoothPosition(transform.position, position);

        Vector3 dirMov = (transform.position - oldPos).normalized;

        transform.forward = dirMov;


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
            }
            attackDamage = ChargeAmount;
            attackDamage = Mathf.Clamp(attackDamage, 0, 100);
        
        
    }
    public void DoAttack()
    {
        if (TempTarget != null)
        {
            Vector3 offset = new Vector3(0, TempTarget.transform.localScale.y * 3, 0);
            if (Vector3.Distance(transform.position, TempTarget.transform.position) > (tempDistance / 2))
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
                }

                transform.forward = Vector3.Slerp(transform.forward, dirMov, DT * attackDamp * 1.5f);
                if (Vector3.Distance(transform.position, TempTarget.transform.position) < (tempDistance / 2) + 1.5f)
                {
                    RaycastHit hit;

                    if (Physics.Raycast(transform.position, transform.forward, out hit, Mathf.Infinity))
                    {
                        if (!Hit && (hit.collider.CompareTag("Enemy") || hit.collider.CompareTag("Boss")))
                        {
                            //ParticleSystem bulletHit = Instantiate(impact, hit.point, Quaternion.FromToRotation(Vector3.up, hit.normal));
                            //bulletHit.transform.parent = hit.collider.gameObject.transform;

                           
                            IDamageable dmg = hit.collider.GetComponent<IDamageable>();
                            killpos = TempTarget.transform.position;
                            killOffset = offset;

                            Hit = true;
                            dmg.TakeDamage(attackDamage);
                            Energy.Energy = Energy.Energy - attackDamage;
                            attackDamage = 0;
                            ChargeAmount = 0;
                            Controller.Charge = false;
                           
                        }

                    }
                }
            }
            else
            {
                Vector3 oldPos = transform.position;
                transform.position = Vector3.Lerp(transform.position, (TempTarget.transform.position + offset), DT * 2);
                Vector3 dirMov = (transform.position - oldPos).normalized;
                transform.forward = Vector3.Slerp(transform.forward, dirMov, DT * attackDamp);

                if (Vector3.Distance(transform.position, (TempTarget.transform.position + offset)) < 1)
                {
                    CurrentState = States.idleState;
                }
            }
        }
        else
        {
            Vector3 oldPos = transform.position;
            transform.position = Vector3.Lerp(transform.position, (killpos + killOffset), DT * 2);
            Vector3 dirMov = (transform.position - oldPos).normalized;
            transform.forward = Vector3.Slerp(transform.forward, dirMov, DT * attackDamp);

            if (Vector3.Distance(transform.position, (killpos + killOffset)) < 1)
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

        if (Energy.Energy >= 20)
        {
            if (Charge)
            {
                ChargeAttack();
            }

            if (Fire)
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
    float DT;
    void FixedUpdate()
    {
        KeyInput();
        DT = Time.deltaTime;
        switch(CurrentState)
        {
            case States.idleState:
                DoIdle();
                break;

           
            case States.AttackState:
                DoAttack();
                break;

        }
    }
}
