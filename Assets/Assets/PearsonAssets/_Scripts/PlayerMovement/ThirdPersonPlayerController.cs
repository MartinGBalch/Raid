using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ThirdPersonPlayerController : MonoBehaviour {

    public ControllerSupport Controller;
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

    public MoveSettings moveSetting = new MoveSettings();
    public PhysicsSettings physSetting = new PhysicsSettings();
    public InputSettings inputSetting = new InputSettings();
    private EnergyCharge Energy;
    Vector3 velocity = Vector3.zero;
    float forwardInput, turnInput, jumpInput;
    public ParticleSystem LaserParticle, SuperCharged;

    bool Grounded()
    {

        return Physics.Raycast(transform.position, Vector3.down, moveSetting.distToGrounded);
    }

    public void getInput()
    {
        forwardInput = Input.GetAxis(inputSetting.Forward_Axis);
        turnInput = Input.GetAxis(inputSetting.Turn_Axis);
        //  jumpInput = Input.GetAxisRaw(inputSetting.Jump_Axis);
    }

    private Animator anim;
    public Transform cam;
    public Rigidbody rb;
    public float NonCombatMaxSpeed;
    public float vertSpeed, HorzSpeed;
    public float DT;
    private ThirdPersonCameraController cam1;
    public PlayerHealth health;
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
        Energy = GetComponent<EnergyCharge>();
        cam1 = cam.gameObject.GetComponent<ThirdPersonCameraController>();
        NonCombatState = States.IdleState;
        CombatState = States.CombatIdleState;
        CurrentState = States.OutOfCombatState;
        AttackingState = States.AttackOne;
        rb = GetComponent<Rigidbody>();
        anim = GetComponent<Animator>();
    }

    bool Forward, Backward, Left, Right;
    public bool Sprint, Jump, Dash, DashAttack;
    public float dashTime;
    public bool moved, SwordDraw;

    public float jumpVel;
    public int jumpCount;
    public float fallMultiplier = 2.5f;
    public float lowJumpMultiplier = 2f;
    float jumptime = .05f;
    public bool Attacking;
    public float attackCooldown;
    float Horizontal, Vertical;
    bool canDash;
    bool Dashing;
    public float Charge;
    private float smoothTimer;
    private Vector3 moveVector;
    public TimeManager TimerDT;

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


            Vector3 dir1 = (cam1.target.transform.position - transform.position).normalized;
            dir1.y = 0;

            rb.velocity = (dir1 * NonCombatMaxSpeed);

            RaycastHit hit;



            Vector3 dir = new Vector3(rb.velocity.x, 0f, rb.velocity.z);

            Quaternion dirQ = Quaternion.LookRotation(dir);
            Quaternion slerp = Quaternion.Slerp(transform.rotation, dirQ, 0.5f);



            var fwd = transform.forward;

            var direct = (cam1.target.transform.position - transform.position).normalized;

            var lkat = Vector3.Slerp(fwd, direct, DT * 7);
            lkat.y = 0;
            transform.LookAt(lkat + transform.position, Vector3.up);


            rb.velocity = new Vector3(Mathf.Clamp(rb.velocity.x, -HorzSpeed, HorzSpeed), rb.velocity.y, Mathf.Clamp(rb.velocity.z, -vertSpeed, vertSpeed));


        }
        else if(cam1.target == null && moveVector == new Vector3(0, 0, 0))
        {

            Vector3 camRel = cam.forward;

            camRel.y = 0;
            camRel.Normalize();

            var force = camRel * NonCombatMaxSpeed - rb.velocity;

            rb.AddForce(force);

            rb.velocity = new Vector3(rb.velocity.x, 0, rb.velocity.z);
            Vector3 dir = new Vector3(rb.velocity.x, 0f, rb.velocity.z);

            Quaternion dirQ = Quaternion.LookRotation(dir);
            Quaternion slerp = Quaternion.Slerp(transform.rotation, dirQ, 0.5f);
            rb.MoveRotation(slerp);
            RaycastHit hit;
            if (Physics.Raycast(transform.position, transform.forward, out hit, 1))
            {
                rb.freezeRotation = true;
            }
            else
            {

                rb.MoveRotation(slerp);
            }
            rb.velocity = new Vector3(Mathf.Clamp(rb.velocity.x, -HorzSpeed, HorzSpeed), rb.velocity.y, Mathf.Clamp(rb.velocity.z, -vertSpeed, vertSpeed));

        }
        else
        {
            Vector3 camRel = cam.transform.localToWorldMatrix * new Vector4(moveVector.x, moveVector.y, moveVector.z, 0);

            camRel.y = 0;
            camRel.Normalize();

            var force = camRel * NonCombatMaxSpeed - rb.velocity;

            rb.AddForce(force);
            rb.velocity = new Vector3(rb.velocity.x, 0, rb.velocity.z);
            Vector3 dir = new Vector3(rb.velocity.x, 0f, rb.velocity.z);

            Quaternion dirQ = Quaternion.LookRotation(dir);
            Quaternion slerp = Quaternion.Slerp(transform.rotation, dirQ, 0.5f);
            rb.MoveRotation(slerp);
            RaycastHit hit;
            if (Physics.Raycast(transform.position, transform.forward, out hit, 1))
            {
                rb.freezeRotation = true;
            }
            else
            {

                rb.MoveRotation(slerp);
            }
            rb.velocity = new Vector3(Mathf.Clamp(rb.velocity.x, -HorzSpeed, HorzSpeed), rb.velocity.y, Mathf.Clamp(rb.velocity.z, -vertSpeed, vertSpeed));

       }
    }
    public GameObject mesh;
    public ParticleSystem Poof;
    void DashAttackMovement()
    {
        AttackdashTime -= DT;
        HorzSpeed = 60;
        vertSpeed = 60;
        NonCombatMaxSpeed = 80;
       

       Vector3 camRel = cam.transform.forward;
      

        camRel.y = 0;



        var force = camRel * NonCombatMaxSpeed;

     
        
         transform.forward = camRel;

        rb.velocity = (transform.forward * NonCombatMaxSpeed);

        rb.velocity = new Vector3(Mathf.Clamp(rb.velocity.x, -HorzSpeed, HorzSpeed), rb.velocity.y, Mathf.Clamp(rb.velocity.z, -vertSpeed, vertSpeed));
       


        if(AttackdashTime <= 0)
        {

            NonCombatState = States.IdleState;
            DashAttack = false;
            attacking = false;
            health.Imune = false;
            Poof.Play();

            Poof.simulationSpace = ParticleSystemSimulationSpace.World;
            mesh.SetActive(true);

            hitbox2.SetActive(false);
            anim.SetTrigger("EndDashAttack");
            
            anim.SetBool("Dash", false);
        }
        else
        {

            health.Imune = true;
            Dash = false;
            canDash = false;
            Dashing = false;
            hitbox2.SetActive(true);
            NonCombatState = States.DashAttackState;
            mesh.SetActive(false);
        }
    }
    float AttackdashTime;
    bool beginSuper;
    public bool inSuper;
    public void KeyInput()
    {
        getInput();
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
        Forward = Input.GetKey(KeyCode.W) || Controller.Vertical > 0;
        Backward = Input.GetKey(KeyCode.S) || Controller.Vertical < 0;
        Left = Input.GetKey(KeyCode.A) || Controller.Horizontal < 0;
        Right = Input.GetKey(KeyCode.D) || Controller.Horizontal > 0;


        moveVector = new Vector3(Controller.Horizontal, 0, Controller.Vertical);
        moveVector.z += Input.GetKey(KeyCode.W) ? 1 : 0;
        moveVector.z -= Input.GetKey(KeyCode.S) ? 1 : 0;
        moveVector.x -= Input.GetKey(KeyCode.A) ? 1 : 0;
        moveVector.x += Input.GetKey(KeyCode.D) ? 1 : 0;

        moveVector.Normalize();


        Jump = Input.GetKeyDown(KeyCode.Space) || Controller.Jump;
        if (Forward || Backward || Left || Right || Jump || Sprint || attacking)
        { moved = true; }
        else
        { moved = false; }


        DashAttack = ((Input.GetKey(KeyCode.LeftControl) || Controller.Dash > .1f) && (mouseAttack || Controller.Attack));
        Sprint = (Input.GetKey(KeyCode.LeftShift) || Controller.Sprint) && moved;
        Dash = (Input.GetKeyDown(KeyCode.LeftControl) || Controller.Dash > .1f) && canDash && moved && !DashAttack && !attacking;

        attackCooldown -= DT;
        ComboTime -= DT;
        smoothTimer -= DT;
        mouseAttack = Input.GetMouseButtonDown(0);
        if (DashAttack && NonCombatState != States.SuperState && Energy.Energy >= 10 && NonCombatState != States.DashAttackState)
        {
            Controller.Attack = false;
            mouseAttack = false;
            Poof.Play();
            Poof.simulationSpace = ParticleSystemSimulationSpace.World;
            anim.SetTrigger("DashAttack");
            AttackdashTime = .15f;
            Energy.Energy -= 10;
            NonCombatState = States.DashAttackState;
        }
        else if ((mouseAttack || Controller.Attack) && attacking == false &&
            NonCombatState != States.SuperState && NonCombatState != States.DashAttackState)
        {
            Controller.Attack = false;
            mouseAttack = false;
            attacking = true;
            anim.SetTrigger("Attack");
            presstimer = .005f;
            NonCombatState = States.AttackState;

        }
        if ((Controller.SuperCharge || Input.GetMouseButtonDown(2)) && 
            NonCombatState != States.SuperState && Energy.Energy >= Energy.MaxEnergy && NonCombatState != States.DashAttackState)
        {
            TimerDT.startSlowMotion(TimerDT.TestProperties);
            SuperCharged.Play();
            NonCombatState = States.SuperState;
            beginSuper = true;
            tempPos = transform.position + new Vector3(0, .5f, 0);
            inSuper = true;
            anim.SetTrigger("SuperIdle");
        }
        
    } /// <summary>
    /// ///////////////////////////////////////////////
    /// </summary>


    float presstimer = 0;
    void AttackOne()
    {
        HorzSpeed = 5;
        vertSpeed = 5;
        attackTime = .5f;
        hitbox.SetActive(true);
        if ((mouseAttack || Controller.Attack) && presstimer <= 0)
        {
            mouseAttack = false;
            Controller.Attack = false;
            presstimer = .01f;
            buttonPress = true;
        }


    }
    void AttackTwo()
    {
        attackTime = .4f;
        HorzSpeed = 3;
        vertSpeed = 3;
        hitbox.SetActive(true);
        if (mouseAttack || Controller.Attack)
        {
            mouseAttack = false;
            Controller.Attack = false;
            presstimer = .01f;
            buttonPress = true;
        }
    }
    void AttackThree()
    {
        attackTime = .5f;
        HorzSpeed = 5;
        vertSpeed = 5;
        hitbox2.SetActive(true);

        if(!Grounded())
        {

            this.rb.AddForce(-Vector3.up * jumpVel);
        }

        if (mouseAttack || Controller.Attack)
        {
            mouseAttack = false;
            Controller.Attack = false;
            presstimer = .01f;
            buttonPress = true;
        }
    }
    public bool mouseAttack = false;




    public void SprintFunction()
    {

        if (Sprint)
        {
            NonCombatMaxSpeed = 60;

            anim.SetBool("jogging", true);

            vertSpeed = 7;
            HorzSpeed = 7;
        }
        if (!Sprint && !Dashing && !attacking)
        {
            NonCombatMaxSpeed = 50;
            HorzSpeed = 4;
            vertSpeed = 4;
            anim.SetBool("jogging", false);
        }

        if (!Dashing)
        {
            dashTime = .7f;
        }
        if (Dash && canDash)
        {
            Dashing = true;

            anim.SetBool("Dash", true);
        }

        if (canDash == true)
        {
            if (Dash)
            {
                canDash = false;
            }
        }
        else
        {
            if (Controller.Dash <= .1 && !Input.GetKey(KeyCode.LeftControl))
            {
                canDash = true;
            }
        }


        if (Dashing)
        {
            dashTime -= DT;

        }
        if (dashTime >= 0 && Dashing)
        {
            NonCombatMaxSpeed = 60;


            vertSpeed = 35;
            HorzSpeed = 35;
        }
        else if (dashTime < 0)
        {
            Dashing = false;

            anim.SetBool("Dash", false);
        }

    }
    public bool fall;
    public void JumpFunction()
    {
        fall = Grounded();
        jumptime -= DT;

        if ((Jump) && jumpCount > 0 && jumptime < 0 && !Dashing)
        {
            jumpCount--;
            anim.SetBool("Jumping", true);

            this.rb.AddForce(Vector3.up * jumpVel);



            jumptime = 1f;
            canmove = true;

        }

        if (rb.velocity.y < 0 && !Grounded() && !Dashing && !(Jump))
        {
            rb.velocity += Vector3.up * Physics.gravity.y * (fallMultiplier - 1) * DT;
        }
        else if (rb.velocity.y > 0 && !Dashing && !(Jump))
        {
            rb.velocity += Vector3.up * Physics.gravity.y * (lowJumpMultiplier - 1) * DT;
        }
        else if (Grounded() == false && !Dashing && !(Jump))
        {

            rb.velocity += Vector3.up * Physics.gravity.y * (fallMultiplier - 1) * DT;
        }

        if (Grounded())
        {

            Controller.Jump = false;

        }
        if (!Grounded() && !Dashing)
        {

            HorzSpeed = 6;
            vertSpeed = 6;
        }

    }
    public bool attacking = false;
    public float attackTime;
    public GameObject hitbox, hitbox2;
    public int comboNumb = 0;
    private float ComboTime;
    public void ComboFunction()
    {
        if (comboNumb == 1)
        {
            anim.SetTrigger("Combo1");

            HorzSpeed = .4f;
            vertSpeed = .5f;
            attackTime = .5f;

        }
        else if (comboNumb == 2)
        {
            anim.SetTrigger("Combo2");
            attackTime = .4f;
            HorzSpeed = .01f;
            vertSpeed = .01f;

        }
        else if (comboNumb == 3)
        {
            anim.SetTrigger("Combo3");
            attackTime = .4f;
            HorzSpeed = .5f;
            vertSpeed = .5f;
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
            BirdSuper = false;
            correct = false;
            Laser.SetActive(false);
            inSuper = false;
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
            beginSuper = true;
            SuperCharged.Stop();
            correct = false;
            inSuper = false;
            SuperAttackState = States.WaitingState;
            NonCombatState = States.IdleState;
            anim.SetTrigger("EndSuper");
        }
    }
    public bool BirdSuper;
    Vector3 tempPos;
    float smoothCorrect;
    public void SuperFunction()
    {
        
        if ((Controller.Attack || mouseAttack) && beginSuper == true && Energy.Energy >= Energy.MaxEnergy)
        {
            Controller.Attack = false;
            mouseAttack = false;
            beginSuper = false;
            SlashTime = 1;
            LaserTime = 3;
            Energy.Energy -= Energy.MaxEnergy;
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
        transform.position = Vector3.Lerp(transform.position, tempPos, DT * 6);
        
        if (cam1.target != null)
        {

            Vector3 camRel = cam.transform.forward;


            //camRel.y = 0;

            //transform.forward = Vector3.Slerp(transform.forward, camRel, DT * 6);



            

            var fwd = transform.forward;

            var direct = (cam1.target.transform.position - transform.position).normalized;
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
         
            transform.LookAt(lkat + transform.position, Vector3.up);


            rb.velocity = new Vector3(Mathf.Clamp(rb.velocity.x, -HorzSpeed, HorzSpeed), rb.velocity.y, Mathf.Clamp(rb.velocity.z, -vertSpeed, vertSpeed));


        }
        else
        {
            Vector3 camRel = cam.transform.forward;
            if (correct)
            {
                camRel.y = 0;
              
                smoothCorrect = 3;
            }
            else
            {
                smoothCorrect = 6;
            }
            transform.forward = Vector3.Slerp(transform.forward, camRel, DT * smoothCorrect);


            rb.velocity = new Vector3(Mathf.Clamp(rb.velocity.x, -HorzSpeed, HorzSpeed), rb.velocity.y, Mathf.Clamp(rb.velocity.z, -vertSpeed, vertSpeed));

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


       

        if (moved == true && NonCombatState != States.AttackState && NonCombatState != States.SuperState && NonCombatState != States.DashAttackState)
        {
            NonCombatState = States.MovementState;
        }
        else if(moved == false && NonCombatState != States.AttackState && NonCombatState != States.SuperState && NonCombatState != States.DashAttackState)
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
        if (moved == true && CombatState != States.AttackState)
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
        Vector3 dir = transform.InverseTransformVector(rb.velocity);
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
            Vector3 camRel = cam.transform.localToWorldMatrix * new Vector4(moveVector.x, moveVector.y, moveVector.z, 0);

            camRel.y = 0;
            camRel.Normalize();

            var force = camRel * NonCombatMaxSpeed - rb.velocity;
           
            rb.AddForce(force);

            Vector3 dir = new Vector3(rb.velocity.x, 0f, rb.velocity.z);

            Quaternion dirQ = Quaternion.LookRotation(dir);
            Quaternion slerp = Quaternion.Slerp(transform.rotation, dirQ, 0.5f);

            rb.MoveRotation(slerp);

            RaycastHit hit;

           
            rb.velocity = new Vector3(Mathf.Clamp(rb.velocity.x, -HorzSpeed, HorzSpeed), rb.velocity.y, Mathf.Clamp(rb.velocity.z, -vertSpeed, vertSpeed));
        }
    }
    
    
   
    private void OnCollisionEnter(Collision collision)
    {
        if (collision.gameObject.CompareTag("Floor"))
        {
            canmove = true;
            jumpCount = 1;
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
            jumpCount = 1;
        }
        else
        {

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
        KeyInput();
        anim.SetBool("Attacking", NonCombatState == States.AttackState);
        if (inSuper == false)
        {
            SprintFunction();
            JumpFunction();
        }

    }

    void FixedUpdate ()
    {
       
        DT = TimerDT.DT;
   
        AnimBlendControl();
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

    public void EndAttackOne()
    {
        
        if (buttonPress == false)
        {
            hitbox.SetActive(false);
        
            anim.SetTrigger("EndAttack");
            attacking = false;
            AttackingState = States.AttackOne;
            NonCombatState = States.IdleState;
        }
        else
        {
            hitbox.SetActive(false);
            anim.SetTrigger("Combo1");
            AttackingState = States.AttackTwo;
        }

        buttonPress = false;
    }
    public void EndAttackTwo()
    {
        
        if (NonCombatState == States.AttackState)
        {
            if (buttonPress == false && AttackingState == States.AttackTwo)
            {
                hitbox.SetActive(false);
               
                anim.SetTrigger("EndAttack");
                attacking = false;
                AttackingState = States.AttackOne;
                NonCombatState = States.IdleState;
            }
            else
            {

                hitbox.SetActive(false);
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
              
                hitbox2.SetActive(false);
               
                anim.SetTrigger("EndAttack");
                attacking = false;
                buttonPress = false;
                AttackingState = States.AttackOne;
                NonCombatState = States.IdleState;

            }
        }
    }
    public ParticleSystem Slash,SlashDown;
    public void BeginAttack1()
    {
        Slash.Play();
       
    }
    public void BeginAttack2()
    {
        if (attacking && NonCombatState != States.IdleState)
        {
            SlashDown.Play();
        }

    }

    public GameObject Slash1, Slash2, Laser;

    public void SuperSlash1()
    {
        TimerDT.startSlowMotion(TimerDT.TestProperties);
        GameObject slasher = Instantiate(Slash1, transform.position + new Vector3(0,1,0),  transform.rotation);
    }
    public void SuperSlash2()
    {

        GameObject slasher = Instantiate(Slash2, transform.position + new Vector3(0, 1, 0), transform.rotation);
    }
    public void SuperSlash3()
    {
        
    }
    public void SuperLaser()
    {
        Laser.SetActive(true);
    }
}
