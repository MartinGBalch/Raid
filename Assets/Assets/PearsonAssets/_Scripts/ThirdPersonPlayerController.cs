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
        public float distToGrounded = .1f;
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
        HeavyAttackState,
        AttackStateMovement,
        AttackOne,
        AttackTwo,
        AttackThree,

    }

    public States CurrentState, NonCombatState, CombatState, AttackingState;

	void Start ()
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
    public bool Sprint, Jump, Dash;
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
        if (cam1.target != null)
        {


            Vector3 dir1 = (cam1.target.transform.position - transform.position).normalized;
            dir1.y = 0;

            rb.AddForce(dir1 * NonCombatMaxSpeed);

            RaycastHit hit;



            Vector3 dir = new Vector3(rb.velocity.x, 0f, rb.velocity.z);

            Quaternion dirQ = Quaternion.LookRotation(dir);
            Quaternion slerp = Quaternion.Slerp(transform.rotation, dirQ, 0.5f);

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
    float presstimer;
    void AttackOne()
    {
        HorzSpeed = .4f;
        vertSpeed = .5f;
        attackTime = .5f;
        hitbox.SetActive(true);
        if ((Input.GetMouseButtonDown(0) || Controller.Attack) && presstimer <= 0)
        {
            Controller.Attack = false;
            presstimer = .01f;
            buttonPress = true;
        }


    }
    void AttackTwo()
    {
        attackTime = .4f;
        HorzSpeed = .01f;
        vertSpeed = .01f;
        hitbox.SetActive(true);
        if (Input.GetMouseButtonDown(0) || Controller.Attack)
        {
            Controller.Attack = false;
            presstimer = .01f;
            buttonPress = true;
        }
    }
    void AttackThree()
    {
        attackTime = .4f;
        HorzSpeed = .5f;
        vertSpeed = .5f;
        hitbox.SetActive(true);
        if (Input.GetMouseButtonDown(0) || Controller.Attack)
        {
            Controller.Attack = false;
            presstimer = .01f;
            buttonPress = true;
        }
    }




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
        Forward = Input.GetKey(KeyCode.W) ||Controller.Vertical > 0;
        Backward   = Input.GetKey(KeyCode.S) || Controller.Vertical < 0;
        Left = Input.GetKey(KeyCode.A) || Controller.Horizontal < 0;
        Right = Input.GetKey(KeyCode.D) || Controller.Horizontal > 0;


        moveVector = new Vector3(Controller.Horizontal,0,Controller.Vertical);
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


        Sprint = (Input.GetKey(KeyCode.LeftShift) || Controller.Sprint) && moved;
        Dash = (Input.GetKeyDown(KeyCode.LeftControl) || Controller.Dash > .1f) && canDash && moved;
        SprintFunction();
        JumpFunction();
        attackCooldown -= DT;
        ComboTime -= DT;
        smoothTimer -= DT;
       
        if ((Input.GetMouseButtonDown(0) || Controller.Attack) && attacking == false)
        {
            Controller.Attack = false;
            attacking = true;
            anim.SetTrigger("Attack");
            presstimer = .01f;
            NonCombatState = States.AttackState;

        }
       
    }

    public void SprintFunction()
    {
        
        if (Sprint)
        {

            anim.SetBool("jogging", true);
            NonCombatMaxSpeed = 20;
            vertSpeed = 7;
            HorzSpeed = 7;
        }
        if(!Sprint && !Dashing && !attacking)
        {
            HorzSpeed = 3;
            vertSpeed = 3;
            anim.SetBool("jogging", false);
        }

        if(!Dashing)
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
            if(Dash)
            {
                canDash = false;   
            }
        }
        else
        {
            if(Controller.Dash <= .1 && !Input.GetKey(KeyCode.LeftControl))
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


            NonCombatMaxSpeed = 50;
            vertSpeed = 20;
            HorzSpeed = 20;
        }
        else if(dashTime < 0)
        {
            Dashing = false;
           
            anim.SetBool("Dash", false);
        }

    }

    public void JumpFunction()
    {
        jumptime -= DT;
        if ((Jump) && jumpCount > 0 && jumptime < 0)
        {
            anim.SetBool("Jumping", true);
            this.rb.AddForce(Vector3.up * jumpVel);
            jumpCount--;
            jumptime = 1f;

        }
        if (rb.velocity.y < 0 && !Grounded())
        {
            rb.velocity += Vector3.up * Physics.gravity.y * (fallMultiplier - 1) * DT;
        }
        else if (rb.velocity.y > 0 )
        {
            rb.velocity += Vector3.up * Physics.gravity.y * (lowJumpMultiplier - 1) * DT;
        }
        else if(Grounded() == false)
        {

            rb.velocity += Vector3.up * Physics.gravity.y * (fallMultiplier - 1) * DT;
        }
        if(Grounded())
        {
            Controller.Jump = false;
        }
    }
    public bool attacking = false;
    public float attackTime;
    public GameObject hitbox;
    public int comboNumb = 0;
    private float ComboTime;
    public void ComboFunction()
    {
        if(comboNumb == 1)
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



    //public void AttackFunction()
    //{
    //    if (attacking == false)
    //    {
    //        ComboFunction();

    //        attacking = true;
    //        hitbox.SetActive(true);
    //    }

    //    attackTime -= DT;
    //    if (attackTime > 0 && attacking == true)
    //    {
    //        if (cam1.target != null)
    //        {




    //            Vector3 dir1 = (cam1.target.transform.position - transform.position).normalized;
    //            dir1.y = 0;

    //            rb.AddForce(dir1 * NonCombatMaxSpeed);

    //            Vector3 dir = new Vector3(rb.velocity.x, 0f, rb.velocity.z);

    //            Quaternion dirQ = Quaternion.LookRotation(dir);
    //            Quaternion slerp = Quaternion.Slerp(transform.rotation, dirQ, DT * 10);
    //            rb.MoveRotation(slerp);

    //            rb.velocity = new Vector3(Mathf.Clamp(rb.velocity.x, -HorzSpeed, HorzSpeed), rb.velocity.y, Mathf.Clamp(rb.velocity.z, -vertSpeed, vertSpeed));
    //        }
    //        else
    //        {
    //            Vector3 dir1 = Vector3.Normalize(new Vector3(cam.forward.x, 0, cam.forward.z));
    //            rb.velocity = new Vector3(0, 0, 0);
    //            transform.forward = dir1;
    //        }
    //    }
    //    else
    //    {
    //        attacking = false;
    //        NonCombatState = States.MovementState;
    //        CombatState = States.MovementState;
    //        attackCooldown = .2f;
    //        hitbox.SetActive(false);
    //        anim.SetBool("Attacking", false);
    //        Controller.Attack = false;
    //      if(comboNumb == 3)
    //        {
    //            comboNumb = 0;
    //        }
    //    }
    //}

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
         
        }

        if (moved == true && NonCombatState != States.AttackState)
        {
            NonCombatState = States.MovementState;
        }
        else if(moved == false && NonCombatState != States.AttackState)
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



        anim.SetFloat("Speed", rb.velocity.magnitude / 1);
    }

    public void Idle()
    { 
        rb.velocity = new Vector3(0, rb.velocity.y, 0);
      
    }


    public void Movement()
    {
        
        
        Vector3 camRel = cam.transform.localToWorldMatrix * new Vector4(moveVector.x,moveVector.y,moveVector.z, 0);

        camRel.y = 0;
        camRel.Normalize();

        var force = camRel * NonCombatMaxSpeed - rb.velocity;

        rb.AddForce(force);

        Vector3 dir = new Vector3(rb.velocity.x, 0f, rb.velocity.z);

        Quaternion dirQ = Quaternion.LookRotation(dir);
        Quaternion slerp = Quaternion.Slerp(transform.rotation, dirQ, 0.5f);
        rb.MoveRotation(slerp);

        rb.velocity = new Vector3(Mathf.Clamp(rb.velocity.x, -HorzSpeed, HorzSpeed), rb.velocity.y, Mathf.Clamp(rb.velocity.z, -vertSpeed, vertSpeed));

    }
    
    
   
    private void OnCollisionEnter(Collision collision)
    {
        jumpCount = 1;
        anim.SetBool("Jumping", false);
    }

    void FixedUpdate ()
    {
        DT = Time.deltaTime;
        KeyInput();
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
            buttonPress = false;
            AttackingState = States.AttackOne;
            NonCombatState = States.IdleState;
        }
        else
        {
            hitbox.SetActive(false);
            anim.SetTrigger("Combo1");
            buttonPress = false;
            AttackingState = States.AttackTwo;
        }
    }
    public void EndAttackTwo()
    {

        if (buttonPress == false)
        {
            hitbox.SetActive(false);
            anim.SetTrigger("EndAttack");
            attacking = false;
            buttonPress = false;
            AttackingState = States.AttackOne;
            NonCombatState = States.IdleState;
        }
        else
        {

            hitbox.SetActive(false);
            anim.SetTrigger("Combo2");
            buttonPress = false;
            AttackingState = States.AttackThree;
        }
    }
    public void EndAttackThree()
    {

        if (buttonPress == false)
        {
            hitbox.SetActive(false);
            anim.SetTrigger("EndAttack");
            attacking = false;
            buttonPress = false;
            AttackingState = States.AttackOne;
            NonCombatState = States.IdleState;
        }
        else
        {
            hitbox.SetActive(false);
            anim.SetTrigger("Combo3");
            buttonPress = false;
            AttackingState = States.AttackOne;
        }
    }

}
