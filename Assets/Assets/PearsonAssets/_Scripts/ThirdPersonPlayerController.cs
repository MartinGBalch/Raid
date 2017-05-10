using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ThirdPersonPlayerController : MonoBehaviour {


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
        jumpInput = Input.GetAxisRaw(inputSetting.Jump_Axis);
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



    }

    public States CurrentState, NonCombatState, CombatState;

	void Start ()
    {
        cam1 = cam.gameObject.GetComponent<ThirdPersonCameraController>();
        NonCombatState = States.IdleState;
        CombatState = States.CombatIdleState;
        CurrentState = States.OutOfCombatState;
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
        Forward = Input.GetKey(KeyCode.W);
        Backward = Input.GetKey(KeyCode.S);
        Left = Input.GetKey(KeyCode.A);
        Right = Input.GetKey(KeyCode.D);
        Jump = Input.GetKeyDown(KeyCode.Space);
        Sprint = Input.GetKey(KeyCode.LeftShift);
        Dash = Input.GetKey(KeyCode.LeftShift);
        if (Forward || Backward || Left || Right || Jump || Sprint)
        { moved = true; }
        else
        { moved = false; }
        SprintFunction();
        JumpFunction();
        attackCooldown -= DT;
        if (Input.GetMouseButton(0) && attacking == false)
        {
            anim.SetBool("Attacking", true);
            NonCombatState = States.AttackState;
        }
        else
        {
            
        }
        

    }

    public void SprintFunction()
    {
        
        if (Sprint)
        {

            if (Dash)
            {
                dashTime -= DT;
            }
            if (dashTime <= 0)
            {
                NonCombatMaxSpeed = 20;
                vertSpeed = 7;
                HorzSpeed = 7;
            }
            else
            {
                NonCombatMaxSpeed = 30;
                vertSpeed = 20;
                HorzSpeed = 20;
            }

            anim.SetBool("jogging", true);

        }
        else
        {
            Dash = false;
            dashTime = .5f;
            HorzSpeed = 3;
            vertSpeed = 3;
            anim.SetBool("jogging", false);
        }

    }

    public void JumpFunction()
    {
        jumptime -= DT;
        if (jumpInput > 0 && jumpCount > 0 && jumptime < 0)
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
        //else if (rb.velocity.y > 0 && jumpInput == 0)
        //{
        //    rb.velocity += Vector3.up * Physics.gravity.y * (lowJumpMultiplier - 1) * DT;
        //}
    }
    public bool attacking = false;
    public float attackTime;
    public GameObject hitbox;
    public void AttackFunction()
    {
        if (attacking == false)
        {
            attackTime = .5f;
            attacking = true;
            hitbox.SetActive(true);
        }

        attackTime -= DT;
        if (attackTime > 0 && attacking == true)
        {
            if (cam1.target != null)
            {
                Vector3 dir1 = (cam1.target.transform.position - transform.position).normalized;
                dir1.y = 0;

                rb.velocity = (dir1 * NonCombatMaxSpeed);

                Vector3 dir = new Vector3(rb.velocity.x, 0f, rb.velocity.z);

                Quaternion dirQ = Quaternion.LookRotation(dir);
                Quaternion slerp = Quaternion.Slerp(transform.rotation, dirQ, DT * 10);
                rb.MoveRotation(slerp);

                rb.velocity = new Vector3(Mathf.Clamp(rb.velocity.x, -HorzSpeed, HorzSpeed), rb.velocity.y, Mathf.Clamp(rb.velocity.z, -vertSpeed, vertSpeed));
            }
            else
            {
                rb.velocity = (transform.forward * NonCombatMaxSpeed);

                Vector3 dir = new Vector3(rb.velocity.x, 0f, rb.velocity.z);

                Quaternion dirQ = Quaternion.LookRotation(dir);
                Quaternion slerp = Quaternion.Slerp(transform.rotation, dirQ, DT * 10);
                rb.MoveRotation(slerp);

                rb.velocity = new Vector3(Mathf.Clamp(rb.velocity.x, -HorzSpeed, HorzSpeed), rb.velocity.y, Mathf.Clamp(rb.velocity.z, -vertSpeed, vertSpeed));

            }
        }
        else
        {
            attacking = false;
            NonCombatState = States.MovementState;
            CombatState = States.MovementState;
            attackCooldown = .2f;
            hitbox.SetActive(false);
            anim.SetBool("Attacking", false);
        }
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
        Vector3 dir1 = Vector3.Normalize(new Vector3(cam.forward.x,0,cam.forward.z));
      
        if (Forward)
        {
            rb.AddForce(dir1 * NonCombatMaxSpeed);
        }
        else if(Backward)
        {
            
            rb.AddForce(dir1 * -NonCombatMaxSpeed);
        }

        if (Right)
        {
            rb.AddForce(cam.right * NonCombatMaxSpeed);
        }
        else if (Left)
        {
            rb.AddForce(cam.right * -NonCombatMaxSpeed);
        }
        Vector3 dir = new Vector3(rb.velocity.x, 0f, rb.velocity.z);

        Quaternion dirQ = Quaternion.LookRotation(dir);
        Quaternion slerp = Quaternion.Slerp(transform.rotation, dirQ, 2);
        rb.MoveRotation(slerp);
       
        rb.velocity = new Vector3(Mathf.Clamp(rb.velocity.x, -HorzSpeed, HorzSpeed), rb.velocity.y, Mathf.Clamp(rb.velocity.z, -vertSpeed, vertSpeed));
       
    }

    public void CombatMovement()
    {

    }

    public void CombatIdle()
    {

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

    private void OnCollisionEnter(Collision collision)
    {
        jumpCount = 1;
        anim.SetBool("Jumping", false);
    }
}
