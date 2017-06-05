using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ThirdPersonPlayerController : MonoBehaviour {

    private Transform Trans;
    [System.Serializable]
    public class MoveSettings
    {
        public float forwardVel = 12;
        public float rotateVel = 100;
        public float jumpVel = 25;
        public float distToGrounded = .5f;
        public LayerMask ground;
    }
    [System.Serializable]
    public class PhysicsSettings
    {
        public float downAccel = .75f;
    }
    [System.Serializable]
    public class InputSettings
    {
        public float inputDelay = .1f;
        public string Forward_Axis = "Vertical";
        public string Turn_Axis = "Horizontal";
        public string Jump_Axis = "Jump";
    }




    [System.Serializable]
    public class PlayerVariables
    {

        public bool Sprint, Jump, Dash, DashAttack;
        public float dashTime;
        public bool moved, SwordDraw;

        public float jumpVel;
        public int jumpCount;
        public float fallMultiplier = 2.5f;
        public float lowJumpMultiplier = 2f;

        public bool inSuper;
        public bool Attacking;
        public float attackCooldown;

        public bool fall;
        public bool mouseAttack = false;


        public bool attacking = false;
        public float attackTime;


        public float Charge;
        public int comboNumb = 0;
        public bool BirdSuper;

        public bool Armed;
        public bool grabed;

        public float NonCombatMaxSpeed;
        public float vertSpeed, HorzSpeed;
    }
    private CameraShake Shake;
    [System.Serializable]
    public class PassedInPlayerVariables
    {
        public TimeManager TimerDT;
        public GameObject hitbox, hitbox2, Slash1, Slash2, Laser, mesh;
        public Transform cam;
        public AudioSource Slashes, FootSteps, Dasher, SuperChargeSource;
        public AudioClip[] SlashSound, Footstep, DashingSound, Teleport, fall;
        public ControllerSupport Controller;
        public ParticleSystem Slash, SlashDown, Poof, DashAir,LaserParticle, SuperCharged, StepLeft, StepRight, SlashStraight,DashDust,Land;

        public PlayerHealth health;

    }
    public PassedInPlayerVariables Objects = new PassedInPlayerVariables();
    public PlayerVariables MV = new PlayerVariables();
    public MoveSettings moveSetting = new MoveSettings();
    private EnergyCharge Energy;
    Vector3 velocity = Vector3.zero;
    float forwardInput, turnInput, jumpInput;
   

    bool Grounded()
    {

        return Physics.Raycast(Trans.position, Vector3.down, moveSetting.distToGrounded);
    }



    public Rigidbody rb;
    public Animator anim;
    public float DT;
    private ThirdPersonCameraController cam1;
    public enum States
    {
        OutOfCombatState,
        CombatState,
        IdleState,
        CombatIdleState,
        MovementState,
        CombatMovementState,
        AttackState,
        ChargeState,
        SuperState,
        SuperAttackWeapon,
        SuperAttackBird,
        HeavyAttackState,
        AttackStateMovement,
        AttackOne,
        AttackTwo,
        AttackThree,
        WaitingState,
        DashAttackState,

    }

    public States CurrentState, NonCombatState, CombatState, AttackingState, SuperAttackState;

    void Start()
    {
        Shake = FindObjectOfType<CameraShake>();
        Trans = GetComponent<Transform>();
        Energy = GetComponent<EnergyCharge>();
        cam1 = Objects.cam.gameObject.GetComponent<ThirdPersonCameraController>();
        NonCombatState = States.IdleState;
        CombatState = States.CombatIdleState;
        CurrentState = States.OutOfCombatState;
        AttackingState = States.AttackOne;
        rb = GetComponent<Rigidbody>();
        anim = GetComponent<Animator>();
    }

    bool Forward, Backward, Left, Right;
    float jumptime = .05f;
    float Horizontal, Vertical;
    bool canDash;
    bool Dashing;
    private float smoothTimer;
    private Vector3 moveVector;
    

    public void AttackFunction()
    {
        presstimer -= DT;
        AttackMovement();
        switch (AttackingState)
        {
            case States.AttackOne:
                AttackOne();
                break;
            case States.AttackTwo:
                AttackTwo();
                break;
            case States.AttackThree:
                AttackThree();
                break;


        }


    }

    bool buttonPress = false;

    void AttackMovement()
    {
        if ((cam1.target != null && moveVector == new Vector3(0,0,0)) || (cam1.target != null && cam1.LockedOnTarget))
        {


            Vector3 dir1 = (cam1.target.transform.position - Trans.position).normalized;
            dir1.y = 0;

            rb.velocity = (dir1 * MV.NonCombatMaxSpeed);

            RaycastHit hit;



            Vector3 dir = new Vector3(rb.velocity.x, 0f, rb.velocity.z);

            Quaternion dirQ = Quaternion.LookRotation(dir);
            Quaternion slerp = Quaternion.Slerp(Trans.rotation, dirQ, 0.5f);



            var fwd = Trans.forward;

            var direct = (cam1.target.transform.position - Trans.position).normalized;

            var lkat = Vector3.Slerp(fwd, direct, DT * 7);
            lkat.y = 0;
            Trans.LookAt(lkat + Trans.position, Vector3.up);


            rb.velocity = new Vector3(Mathf.Clamp(rb.velocity.x, -MV.HorzSpeed, MV.HorzSpeed), rb.velocity.y, Mathf.Clamp(rb.velocity.z, -MV.vertSpeed, MV.vertSpeed));


        }
        else if(cam1.target == null && moveVector == new Vector3(0, 0, 0))
        {

            Vector3 camRel = Objects.cam.forward;

            camRel.y = 0;
            camRel.Normalize();

            var force = camRel * MV.NonCombatMaxSpeed - rb.velocity;
            var Lookforce = camRel + rb.velocity;
            rb.AddForce(force);

            rb.velocity = new Vector3(rb.velocity.x, 0, rb.velocity.z);
            Vector3 dir = new Vector3(rb.velocity.x, 0f, rb.velocity.z);

            Quaternion dirQ = Quaternion.LookRotation(dir);
            Quaternion slerp = Quaternion.Slerp(Trans.rotation, dirQ, 0.5f);
            //rb.MoveRotation(slerp);
            Lookforce.y = 0;

            Trans.forward = (Vector3.Slerp(Trans.forward, Lookforce, 30 * DT));
            RaycastHit hit;
            if (Physics.Raycast(Trans.position, Trans.forward, out hit, 1))
            {
                rb.freezeRotation = true;
            }
            else
            {

                rb.MoveRotation(slerp);
            }
            rb.velocity = new Vector3(Mathf.Clamp(rb.velocity.x, -MV.HorzSpeed, MV.HorzSpeed), rb.velocity.y, Mathf.Clamp(rb.velocity.z, -MV.vertSpeed, MV.vertSpeed));

        }
        else
        {
            Vector3 camRel = Objects.cam.transform.localToWorldMatrix * new Vector4(moveVector.x, moveVector.y, moveVector.z, 0);

            camRel.y = 0;
            camRel.Normalize();

            var force = camRel * MV.NonCombatMaxSpeed - rb.velocity;
            var Lookforce = camRel + rb.velocity;
            rb.AddForce(force);
            rb.velocity = new Vector3(rb.velocity.x, 0, rb.velocity.z);
            Vector3 dir = new Vector3(rb.velocity.x, 0f, rb.velocity.z);

            Quaternion dirQ = Quaternion.LookRotation(dir);
            Quaternion slerp = Quaternion.Slerp(Trans.rotation, dirQ, 0.5f);
            // rb.MoveRotation(slerp);
            Lookforce.y = 0;

            Trans.forward = (Vector3.Slerp(Trans.forward, Lookforce, 30 * DT));
            RaycastHit hit;
            if (Physics.Raycast(Trans.position, Trans.forward, out hit, 1))
            {
                rb.freezeRotation = true;
            }
            else
            {

                rb.MoveRotation(slerp);
            }
            rb.velocity = new Vector3(Mathf.Clamp(rb.velocity.x, -MV.HorzSpeed, MV.HorzSpeed), rb.velocity.y, Mathf.Clamp(rb.velocity.z, -MV.vertSpeed, MV.vertSpeed));

       }
    }
   
    void DashAttackMovement()
    {
        AttackdashTime -= DT;
        MV.HorzSpeed = 60;
        MV.vertSpeed = 60;
        MV.NonCombatMaxSpeed = 80;
       

       Vector3 camRel = Objects.cam.transform.forward;
      

        camRel.y = 0;



        var force = camRel * MV.NonCombatMaxSpeed;

     
        
         Trans.forward = camRel;

        rb.velocity = (Trans.forward * MV.NonCombatMaxSpeed);

        rb.velocity = new Vector3(Mathf.Clamp(rb.velocity.x, -MV.HorzSpeed, MV.HorzSpeed), rb.velocity.y, Mathf.Clamp(rb.velocity.z, -MV.vertSpeed, MV.vertSpeed));
       


        if(AttackdashTime <= 0)
        {

            NonCombatState = States.IdleState;
            MV.DashAttack = false;
            MV.attacking = false;
            Objects.health.Imune = false;
            Objects.Poof.Play();

            Objects.Poof.simulationSpace = ParticleSystemSimulationSpace.World;
            Objects.mesh.SetActive(true);

            Objects.hitbox2.SetActive(false);
            anim.SetTrigger("EndDashAttack");

            Objects.DashDust.Stop();
            Objects.DashAir.Stop();
            anim.SetBool("Dash", false);
        }
        else
        {
            Objects.DashDust.Stop();
            Objects.DashAir.Stop();
            Objects.health.Imune = true;
            MV.Dash = false;
            canDash = false;
            Dashing = false;
            Objects.hitbox2.SetActive(true);
            NonCombatState = States.DashAttackState;
            Objects.mesh.SetActive(false);
        }
       
    }
    float AttackdashTime;
    bool beginSuper;
 
    public void KeyInput()
    {
        if (Input.GetKeyDown(KeyCode.R))
        {
            if (CurrentState == States.OutOfCombatState)
            {
                CurrentState = States.CombatState;

            }
            else
            {
                CurrentState = States.OutOfCombatState;
            }
        }
        Forward = Input.GetKey(KeyCode.W) || Objects.Controller.Vertical > 0;
        Backward = Input.GetKey(KeyCode.S) || Objects.Controller.Vertical < 0;
        Left = Input.GetKey(KeyCode.A) || Objects.Controller.Horizontal < 0;
        Right = Input.GetKey(KeyCode.D) || Objects.Controller.Horizontal > 0;


        moveVector = new Vector3(Objects.Controller.Horizontal, 0, Objects.Controller.Vertical);
        moveVector.z += Input.GetKey(KeyCode.W) ? 1 : 0;
        moveVector.z -= Input.GetKey(KeyCode.S) ? 1 : 0;
        moveVector.x -= Input.GetKey(KeyCode.A) ? 1 : 0;
        moveVector.x += Input.GetKey(KeyCode.D) ? 1 : 0;

        moveVector.Normalize();


        MV.Jump = Input.GetKeyDown(KeyCode.Space) || Objects.Controller.Jump;
        if (Forward || Backward || Left || Right || MV.Jump || MV.Sprint || MV.attacking)
        { MV.moved = true; }
        else
        { MV.moved = false; }

        MV.attackCooldown -= DT;
        ComboTime -= DT;
        smoothTimer -= DT;

        if (MV.Armed)
        {
            MV.DashAttack = ((Input.GetKey(KeyCode.LeftControl) || Objects.Controller.Dash > .1f) && (Input.GetMouseButton(0) || Objects.Controller.Attack));
            MV.Sprint = (Input.GetKey(KeyCode.LeftShift) || Objects.Controller.Sprint) && MV.moved;
            MV.Dash = (Input.GetKeyDown(KeyCode.LeftControl) || Objects.Controller.Dash > .1f) && canDash && MV.moved && !MV.DashAttack && !MV.attacking;


            MV.mouseAttack = Input.GetMouseButtonDown(0);
            if (MV.DashAttack && NonCombatState != States.SuperState && Energy.Energy >= 10 && NonCombatState != States.DashAttackState)
            {
                Objects.Dasher.PlayOneShot(Objects.Teleport[0]);
                Objects.Controller.Attack = false;
                MV.mouseAttack = false;
                Objects.Poof.Play();
                Objects.Poof.simulationSpace = ParticleSystemSimulationSpace.World;
                anim.SetTrigger("DashAttack");
                AttackdashTime = .2f;
                Energy.Energy -= 10;
                NonCombatState = States.DashAttackState;

            }
            else if ((MV.mouseAttack || Objects.Controller.Attack) && MV.attacking == false &&
                NonCombatState != States.SuperState && NonCombatState != States.DashAttackState)
            {
                Objects.Controller.Attack = false;
                MV.mouseAttack = false;
                MV.attacking = true;
                anim.SetTrigger("Attack");
                presstimer = .005f;
                NonCombatState = States.AttackState;

            }
            if ((Objects.Controller.SuperCharge || Input.GetMouseButtonDown(2)) &&
                NonCombatState != States.SuperState && Energy.SuperEnergy >= Energy.SuperMaxEnergy && NonCombatState != States.DashAttackState)
            {
                Objects.TimerDT.startSlowMotion(Objects.TimerDT.TestProperties);
                Objects.SuperCharged.Play();
                NonCombatState = States.SuperState;
                beginSuper = true;
                tempPos = Trans.position + new Vector3(0, .5f, 0);
                MV.inSuper = true;
                Objects.SuperChargeSource.Play();
                anim.SetTrigger("SuperIdle");
            }
        }
    } /// <summary>
    /// ///////////////////////////////////////////////
    /// </summary>


    float presstimer = 0;
    void AttackOne()
    {
        MV.HorzSpeed = 5;
        MV.vertSpeed = 5;
        MV.attackTime = .5f;
        Objects.hitbox.SetActive(true);
        if ((MV.mouseAttack || Objects.Controller.Attack) && presstimer <= 0)
        {
            MV.mouseAttack = false;
            Objects.Controller.Attack = false;
            presstimer = .01f;
            buttonPress = true;
        }


    }
    void AttackTwo()
    {
        MV.attackTime = .4f;
        MV.HorzSpeed = 3;
        MV.vertSpeed = 3;
        Objects.hitbox.SetActive(true);
        if (MV.mouseAttack || Objects.Controller.Attack)
        {
            MV.mouseAttack = false;
            Objects.Controller.Attack = false;
            presstimer = .01f;
            buttonPress = true;
        }
    }
    void AttackThree()
    {
        MV.attackTime = .5f;
        MV.HorzSpeed = 5;
        MV.vertSpeed = 5;
        Objects.hitbox2.SetActive(true);

        if(!Grounded())
        {

            this.rb.AddForce(-Vector3.up * MV.jumpVel);
        }

        if (MV.mouseAttack || Objects.Controller.Attack)
        {
            MV.mouseAttack = false;
            Objects.Controller.Attack = false;
            presstimer = .01f;
            buttonPress = true;
        }
    }




    public void SprintFunction()
    {

        if (MV.Sprint)
        {
            MV.NonCombatMaxSpeed = 60;

            anim.SetBool("jogging", true);

            MV.vertSpeed = 7;
            MV.HorzSpeed = 7;
        }
        if (!MV.Sprint && !Dashing && !MV.attacking)
        {
            MV.NonCombatMaxSpeed = 50;
            MV.HorzSpeed = 4;
            MV.vertSpeed = 4;
            anim.SetBool("jogging", false);
        }

        if (!Dashing)
        {
            MV.dashTime = .7f;
        }
        if (MV.Dash && canDash)
        {
            Dashing = true;
            
            anim.SetBool("Dash", true);
        }

        if (canDash == true)
        {
            if (MV.Dash)
            {
                canDash = false;
            }
        }
        else
        {
            if (Objects.Controller.Dash <= .1 && !Input.GetKey(KeyCode.LeftControl))
            {
                canDash = true;
            }
        }


        if (Dashing)
        {
            MV.dashTime -= DT;
            if (Objects.DashAir.isPlaying == false)
            {
                Objects.DashAir.Play();

                Objects.Dasher.PlayOneShot(Objects.DashingSound[0]);
            }

            if (!MV.DashAttack)
            {
                Objects.DashDust.Play();
            }

            

        }
        if (MV.dashTime >= 0 && Dashing)
        {
            MV.NonCombatMaxSpeed = 60;


            MV.vertSpeed = 35;
            MV.HorzSpeed = 35;
        }
        else if (MV.dashTime < 0)
        {
            Dashing = false;
            Objects.DashAir.Stop();
            anim.SetBool("Dash", false);
        }

    }
  
    public void JumpFunction()
    {
        MV.fall = Grounded();
        jumptime -= DT;

        if ((MV.Jump) && MV.jumpCount > 0 && jumptime < 0 && !Dashing)
        {
            MV.jumpCount--;
            anim.SetBool("Jumping", true);

            this.rb.AddForce(Vector3.up * MV.jumpVel);



            jumptime = 1f;
            canmove = true;

        }

        if (rb.velocity.y < 0 && !Grounded() && !Dashing && !(MV.Jump))
        {
            rb.velocity += Vector3.up * Physics.gravity.y * (MV.fallMultiplier - 1) * DT;
        }
        else if (rb.velocity.y > 0 && !Dashing && !(MV.Jump))
        {
            rb.velocity += Vector3.up * Physics.gravity.y * (MV.lowJumpMultiplier - 1) * DT;
        }
        else if (Grounded() == false && !Dashing && !(MV.Jump))
        {

            rb.velocity += Vector3.up * Physics.gravity.y * (MV.fallMultiplier - 1) * DT;
        }

        if (Grounded())
        {

            Objects.Controller.Jump = false;

        }

        if(Grounded() == false)
        {
            RaycastHit hit;
            if (Physics.Raycast(transform.position + new Vector3(0,.5f,0), Vector3.down, out hit, Mathf.Infinity))
            {
                if (hit.collider.CompareTag("Floor"))
                {
                    Debug.DrawLine(transform.position, hit.point);
                    if (Vector3.Distance(transform.position, hit.point) > 10)
                    {

                        anim.SetBool("Jumping", true);
                    }
                }
            }

        }

        if (!Grounded() && !Dashing)
        {

            MV.HorzSpeed = 6;
            MV.vertSpeed = 6;
        }

    }
 
    private float ComboTime;
    public void ComboFunction()
    {
        if(MV.comboNumb == 1)
        {
            anim.SetTrigger("Combo1");

            MV.HorzSpeed = .4f;
            MV.vertSpeed = .5f;
            MV.attackTime = .5f;

        }
        else if (MV.comboNumb == 2)
        {
            anim.SetTrigger("Combo2");
            MV.attackTime = .4f;
            MV.HorzSpeed = .01f;
            MV.vertSpeed = .01f;

        }
        else if (MV.comboNumb == 3)
        {
            anim.SetTrigger("Combo3");
            MV.attackTime = .4f;
            MV.HorzSpeed = .5f;
            MV.vertSpeed = .5f;
        }
    }
    public void Wait()
    {

    }
    private float LaserTime, SlashTime;
    bool correct;
    public void SuperBird()
    {
        LaserTime -= DT;
        if(LaserTime <= 0 )
        {
            correct = true;
        }
        if(LaserTime <= -1f)
        {
            beginSuper = true;
            MV.BirdSuper = false;
            correct = false;
            Objects.Laser.SetActive(false);
            MV.inSuper = false;
            SuperAttackState = States.WaitingState;
            NonCombatState = States.IdleState;
            anim.SetTrigger("EndSuper");
        }
    }
    public void SuperWeapon()
    {
        SlashTime -= DT;
        if (SlashTime <= 0)
        {
            correct = true;
        }
        if (SlashTime <= -.1f)
        {
            Objects.SuperChargeSource.Stop();
            beginSuper = true;
            Objects.SuperCharged.Stop();
            correct = false;
            MV.inSuper = false;
            SuperAttackState = States.WaitingState;
            NonCombatState = States.IdleState;
            anim.SetTrigger("EndSuper");
        }
    }
 
    Vector3 tempPos;
    float smoothCorrect;
    public void SuperFunction()
    {
        
        if ((Objects.Controller.Attack || MV.mouseAttack) && beginSuper == true && Energy.SuperEnergy >= Energy.SuperMaxEnergy)
        {

            Objects.Controller.Attack = false;
            MV.mouseAttack = false;
            beginSuper = false;
            SlashTime = 1;
            anim.ResetTrigger("EndSuper");
            LaserTime = 3;
            Energy.SuperEnergy -= Energy.SuperMaxEnergy;
            anim.SetTrigger("SuperAttack");
            SuperAttackState = States.SuperAttackWeapon;
        }
        //if((Controller.SuperLaser || Input.GetMouseButtonDown(1)) && beginSuper == true && Energy.Energy >= Energy.MaxEnergy)
        //{

        //    anim.SetTrigger("SuperLaser");
        //    LaserTime = 3;
        //    SlashTime = 1;
        //    BirdSuper = true;
        //    Energy.Energy -= Energy.MaxEnergy;
        //    Controller.SuperLaser = false;
            
        //    beginSuper = false;

        //    SuperAttackState = States.SuperAttackBird;
        //}

        switch (SuperAttackState)
        {
            case States.WaitingState:
                Wait();
                break;
            case States.SuperAttackWeapon:
                SuperWeapon();
                break;
            case States.SuperAttackBird:
                SuperBird();
                break;
         

        }
        Trans.position = Vector3.Lerp(Trans.position, tempPos, DT * 6);
        
        if (cam1.target != null)
        {

            Vector3 camRel = Objects.cam.transform.forward;


            //camRel.y = 0;

            //transform.forward = Vector3.Slerp(transform.forward, camRel, DT * 6);



            

            var fwd = Trans.forward;

            var direct = (cam1.target.transform.position - Trans.position).normalized;
            if (correct)
            {
                direct.y = 0;
                direct.Normalize();
                smoothCorrect = 3;
            }
            else
            {

                smoothCorrect = 6;
            }
            var lkat = Vector3.Slerp(fwd, direct, DT * smoothCorrect);
         
            Trans.LookAt(lkat + Trans.position, Vector3.up);


            rb.velocity = new Vector3(Mathf.Clamp(rb.velocity.x, -MV.HorzSpeed, MV.HorzSpeed), rb.velocity.y, Mathf.Clamp(rb.velocity.z, -MV.vertSpeed, MV.vertSpeed));


        }
        else
        {
            Vector3 camRel = Objects.cam.transform.forward;
            if (correct)
            {
                camRel.y = 0;
                
                smoothCorrect = 3;
            }
            else
            {
                
                smoothCorrect = 6;
            }
            Trans.forward = Vector3.Slerp(Trans.forward, camRel, DT * smoothCorrect);


            rb.velocity = new Vector3(Mathf.Clamp(rb.velocity.x, -MV.HorzSpeed, MV.HorzSpeed), rb.velocity.y, Mathf.Clamp(rb.velocity.z, -MV.vertSpeed, MV.vertSpeed));

        }
        rb.velocity = new Vector3(0, 0, 0);

    }

    public void OutOfCombat()
    {
        switch (NonCombatState)
        {
            case States.IdleState:
                Idle();
                break;
            case States.MovementState:
                Movement();
                break;
            case States.AttackState:
                AttackFunction();
                break;
            case States.SuperState:
                SuperFunction();
                break;
            case States.DashAttackState:
                DashAttackMovement();
                break;

        }


       

        if (MV.moved == true && NonCombatState != States.AttackState && NonCombatState != States.SuperState && NonCombatState != States.DashAttackState)
        {
            NonCombatState = States.MovementState;
        }
        else if(MV.moved == false && NonCombatState != States.AttackState && NonCombatState != States.SuperState && NonCombatState != States.DashAttackState)
        {
            NonCombatState = States.IdleState;
        }
    }

    public void Combat()
    {
        switch (NonCombatState)
        {
            case States.CombatIdleState:
                Idle();
                break;
            case States.CombatMovementState:
                Movement();
                break;
            case States.AttackState:
                AttackFunction();
                break;
        }
        if (MV.moved == true && CombatState != States.AttackState)
        {
            CombatState = States.CombatMovementState;
        }
        else
        {
            CombatState = States.CombatIdleState;
        }
    }

    public void AnimBlendControl()
    {
        Vector3 dir = Trans.InverseTransformVector(rb.velocity);
        dir.Normalize();

        anim.SetFloat("DirX", dir.x);
        anim.SetFloat("DirZ", dir.z);



        anim.SetFloat("Speed", rb.velocity.magnitude /1 );
    }

    public void Idle()
    { 
        rb.velocity = new Vector3(0, rb.velocity.y, 0);
      
    }

    bool canmove;
    public void Movement()
    {
        if (canmove)
        {
            var t = rb.velocity.normalized;
            var e = new Vector4(t.x, t.y, t.z, 0);

            Vector3 camRel = Objects.cam.transform.localToWorldMatrix * (new Vector4(moveVector.x, moveVector.y, moveVector.z, 0));


            camRel.y = 0;
            camRel.Normalize();
            

            var force = camRel * MV.NonCombatMaxSpeed - rb.velocity;

            //if (Vector3.Dot(rb.velocity, camRel) > MV.HorzSpeed)
                //force = Vector3.zero;
            //if(force.magnitude * Vector3.Dot(camRel.normalized, rb.velocity.normalized) > MV.HorzSpeed);


            var Lookforce = camRel;
            Lookforce.y = 0;
            rb.AddForce(force);

            Vector3 dir = new Vector3(rb.velocity.x, 0f, rb.velocity.z);

            Quaternion dirQ = Quaternion.LookRotation(dir);
            Quaternion slerp = Quaternion.Slerp(Trans.rotation, dirQ, 0.5f);
            //Lookforce.y = 0;

            Trans.forward = (Vector3.Slerp(Trans.forward,Lookforce,.2f));

            //Trans.forward = Lookforce;
            //rb.MoveRotation(slerp);

            RaycastHit hit;


            //Truncate
            //rb.velocity

            //Vector3 crt = Objects.cam.transform.localToWorldMatrix * ();
            float mag = new Vector4(MV.HorzSpeed, 0, MV.vertSpeed, 0).magnitude;


            Vector3 vny = new Vector3(rb.velocity.x, 0, rb.velocity.z);

            if (vny.magnitude > mag)
                vny = vny.normalized * mag;

            rb.velocity = new Vector3(vny.x, rb.velocity.y, vny.z);
            //  rb.velocity.z = vny.z;

            //rb.velocity = new Vector3(Mathf.Clamp(rb.velocity.x, -crt.x,crt.x), rb.velocity.y, Mathf.Clamp(rb.velocity.z, -crt.z,crt.z));
            //rb.velocity = new Vector3(Mathf.Clamp(rb.velocity.x, -MV.HorzSpeed, MV.HorzSpeed), rb.velocity.y, Mathf.Clamp(rb.velocity.z, -MV.vertSpeed, MV.vertSpeed));
        }
    }
    
    
   
    private void OnCollisionEnter(Collision collision)
    {
        if (collision.gameObject.CompareTag("Floor"))
        {
            canmove = true;
            MV.jumpCount = 1;
        }
        else
        {
            rb.angularVelocity = new Vector3(rb.angularVelocity.x, 0, rb.angularVelocity.z);
            rb.freezeRotation = true;
            rb.velocity = new Vector3(0,0,0);
        }

        if (!Grounded() && !collision.gameObject.CompareTag("Floor"))
        {

            canmove = false;
            MV.jumpCount = 1;
        }
        else
        {
            if (anim.GetBool("Jumping"))
            {
                Objects.FootSteps.PlayOneShot(Objects.fall[0], 1);
                Shake.StartShake(Shake.TakeDamageProperties);
                Instantiate(Objects.Land, transform.position, Objects.Land.transform.rotation);
            }

            anim.SetBool("Jumping", false);
            canmove = true;
        }
    }
    private void OnCollisionStay(Collision Collider)
    {
        if (Collider.gameObject.CompareTag("Floor"))
        {
            
        }
        else
        {
            rb.freezeRotation = true;
            rb.angularVelocity = new Vector3(rb.angularVelocity.x,0,rb.angularVelocity.z);
        }

        if (Grounded())
        {

            canmove = true;
            
        }

    }
    void Update()
    {
        if (MV.grabed == false)
        {
            KeyInput();
            anim.SetBool("Attacking", NonCombatState == States.AttackState);
            if (MV.inSuper == false)
            {
                SprintFunction();
                JumpFunction();
            }
        }

    }
    public GameObject sword;
    void FixedUpdate ()
    {
       
        DT = Objects.TimerDT.DT;
   
        AnimBlendControl();
        if (MV.grabed == false)
        {
            switch (CurrentState)
            {
                case States.OutOfCombatState:
                    OutOfCombat();
                    break;
                case States.CombatState:
                    Combat();
                    break;
            }
        }
        else
        {
            Vector3 diference = Vector3.Normalize(Trans.position - sword.transform.position);
            diference.y = 0;
            Trans.forward = -diference;
           
        }
    }

    public void EndAttackOne()
    {
        
        if (buttonPress == false)
        {
            Objects.hitbox.SetActive(false);
        
            anim.SetTrigger("EndAttack");
            MV.attacking = false;
            AttackingState = States.AttackOne;
            NonCombatState = States.IdleState;
        }
        else
        {
            Objects.hitbox.SetActive(false);
            anim.SetTrigger("Combo1");
            AttackingState = States.AttackTwo;
        }

        buttonPress = false;
    }
    public void EndAttackTwo()
    {
        
        if (NonCombatState == States.AttackState)
        {
;
            if (buttonPress == false && AttackingState == States.AttackTwo)
            {
                Objects.hitbox.SetActive(false);
               
                anim.SetTrigger("EndAttack");
                MV.attacking = false;
                AttackingState = States.AttackOne;
                NonCombatState = States.IdleState;
            }
            else
            {

                Objects.hitbox.SetActive(false);
                anim.SetTrigger("Combo2");
                AttackingState = States.AttackThree;
            }
        }
        buttonPress = false;
    }
    public void EndAttackThree()
    {
        if (NonCombatState == States.AttackState)
        {
            if (AttackingState == States.AttackThree)
            {

                Objects.hitbox2.SetActive(false);
               
                anim.SetTrigger("EndAttack");
                MV.attacking = false;
                buttonPress = false;
                AttackingState = States.AttackOne;
                NonCombatState = States.IdleState;

            }
        }
    }
   
    public void BeginAttack1()
    {
        Objects.Slash.Play();
        Objects.Slashes.PlayOneShot(Objects.SlashSound[0]);
       
    }
    public void BeginAttack2()
    {
        if (MV.attacking && NonCombatState != States.IdleState)
        {
            Objects.Slashes.PlayOneShot(Objects.SlashSound[1]);
            Objects.SlashDown.Play();
        }

    }
    public void BeginAttack3()
    {
        Objects.SlashStraight.Play();
        Objects.Slashes.PlayOneShot(Objects.SlashSound[2]);
    }


    public void SuperSlash1()
    {
        Objects.TimerDT.startSlowMotion(Objects.TimerDT.TestProperties);
        GameObject slasher = Instantiate(Objects.Slash1, Trans.position + new Vector3(0,1,0),  Trans.rotation);
    }
    public void SuperSlash2()
    {

        GameObject slasher = Instantiate(Objects.Slash2, Trans.position + new Vector3(0, 1, 0), Trans.rotation);
    }
    public void SuperSlash3()
    {
        
    }
    public void SuperLaser()
    {
        Objects.Laser.SetActive(true);
    }


    public void RightFootStep()
    {
        if(Grounded())
        {
            Objects.StepRight.Play();

            Objects.FootSteps.PlayOneShot(Objects.Footstep[Random.Range(0, 5)]);

        }
    }
    public void LeftFootStep()
    {
        if (Grounded())
        {
            Objects.StepLeft.Play();

            Objects.FootSteps.PlayOneShot(Objects.Footstep[Random.Range(0, 5)]);

        }
    }

}
