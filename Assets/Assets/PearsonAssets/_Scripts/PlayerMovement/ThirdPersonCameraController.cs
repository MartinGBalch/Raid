using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ThirdPersonCameraController : MonoBehaviour {
    public ControllerSupport Controller;
    public GameObject Player;
    public Transform Center;
    public Rigidbody rb;
    private Rigidbody RB;

    public float PlayerHeight = 1;

    public float distance = 2f;

    private float x = .0f;
    private float y = 0.0f;

    public float AfkTime = 4;
    private float SetAfkTime;
    public int MouseXSpeed = 5;
    public int MouseYSpeed = 3;
    public int HorzSpeed = 5;
    public float maxViewDist = 25;
    public float minViewDist = 1;

    public int zoomRate = 30;
    private int lerpRate = 5;
    private float desiredDist;
    private float correctedDistance;
    private float currentDist;
    
    public bool shake;
    [SerializeField]
    private float DistAway;
    [SerializeField]
    private float DistUp;
    [SerializeField]
    private float smooth;
    [SerializeField]
    private Transform follow;
    [SerializeField]
    private Vector3 offset = new Vector3(0f, 0, 0f);
    private Vector3 lookDir;
    private Vector3 TargetPos;

    private Vector3 velocityCamSmooth = Vector3.zero;
    [SerializeField]
    private float camSmoothDampTimeNonLock, camSmoothDampTimeLock;
    [SerializeField]
    private float SetcamSmoothDampTime = .1f;

    public float MouseSensitivity;
    private float DT;
    private ThirdPersonPlayerController PlayerController;
    public float turnSpeed;

    Vector3 CurrentRot, CurrentPos;
    float CurrentRotX, CurrentRotY;
    float XrotV, YrotV;

    Vector3 CurrentV, CurrentRotV;
    float SmoothDamp = .05f;
    public Camera cam;
    public enum States
    {

        NonCombatCamState,
        CombatCamState,
        IdleCombatState,
        IdleCamMovement,
        IdleCamMovementAFK,
        LockedOnState,
        NonLockedOnState,

    }

    public TimeManager DeltaTime;

    public States CurrentState, CurrentIdleState, CurrentMovingState, CurrentCombatMoveState, CurrentLockState;

    void Start()
    {
        trans = GetComponent<Transform>();
       
        Vector3 angles = transform.eulerAngles;
        x = angles.x;
        y = angles.y;
        RB = GetComponent<Rigidbody>();

        CurrentPos = transform.position;
        CurrentRot = transform.eulerAngles;

        CurrentRotY = transform.rotation.y;
        CurrentRotX = transform.rotation.x;

        currentDist = distance;
        desiredDist = distance;
        correctedDistance = distance;
        SetAfkTime = AfkTime;
        CurrentIdleState = States.IdleCamMovement;
        CurrentState = States.NonCombatCamState;
        PlayerController = Player.GetComponent<ThirdPersonPlayerController>();

        CurrentLockState = States.NonLockedOnState;
        Screen.lockCursor = true;
        if (RB != null)
        {
            RB.freezeRotation = true;
        }
       

    }

    bool moving, combat;
    public void playerWatch()
    {
        moving = PlayerController.moved;
        combat = PlayerController.SwordDraw;

        if (!combat)
        {
            CurrentState = States.NonCombatCamState;
        }
        else
        {
            CurrentState = States.CombatCamState;
        }

    }

    private float Xtemp, Ytemp;
    public void CamMoveState()
    {
        switch (CurrentIdleState)
        {
            case States.IdleCamMovement:
                DoCamMove();
                break;
            case States.IdleCamMovementAFK:
                DoCamMoveAfk();
                break;
        }
    }
    public void CombatIdleCamMoveState()
    {

    }

    public void CombatMoveCamState()
    {
        switch (CurrentCombatMoveState)
        {
            case States.IdleCamMovement:
                DoCamMove();
                break;
            case States.IdleCamMovementAFK:
                DoCamMoveAfk();
                break;
        }
    }

    public void smoothPosition(Vector3 fromPos, Vector3 toPos)
    {
        transform.position = Vector3.SmoothDamp(fromPos, toPos, ref velocityCamSmooth, SetcamSmoothDampTime);
    }

    public GameObject ClosetTargetView()
    {
        GameObject[] objects = GameObject.FindGameObjectsWithTag("Enemy");
        GameObject Closest = null;
        float dot = -2;
        if (objects == null)
        {
            return null;
        }

        //GameObject bestTarget = null;
        //float closestDistanceSqr = Mathf.Infinity;
        Vector3 currentPosition = transform.position;
        foreach (GameObject potentialTarget in objects)
        {

            Vector3 localPoint = transform.InverseTransformPoint(potentialTarget.transform.position).normalized;
            Vector3 forward = Vector3.forward;
            float test = Vector3.Dot(localPoint, forward);
            if(test > dot)
            {
                dot = test;
                Closest = potentialTarget;
            }
                
            
        }

        return Closest;
    }

    public GameObject close;

    public GameObject target;
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
    private void CompensateForWalls(Vector3 fromObject, ref Vector3 toTarget)
    {
        RaycastHit hit = new RaycastHit();
        if (Physics.Linecast(fromObject, toTarget, out hit))
        {
            toTarget = new Vector3(hit.point.x, toTarget.y, hit.point.z);
        }
    }
    public float tempDamp,TempTargetDamp;
    public bool lockOn;
    public bool LockedOnTarget;
    public void KeyInput()
    {
   
       
        if (target != null && CurrentLockState == States.NonLockedOnState && (Controller.Target >.1f || Input.GetKey(KeyCode.Q)))
        {
            CurrentLockState = States.LockedOnState;
        }
        else if ((!Input.GetKey(KeyCode.Q) && Controller.Target < .1f ) || target == null)
        {
            CurrentLockState = States.NonLockedOnState;
        }
        
    }

    public void NonLockedOn()
    {
        LockedOnTarget = false;
        RaycastHit hit;
        if (Physics.Raycast(transform.position, transform.forward, out hit, 100, 1 << 8) || Physics.Raycast(Player.transform.position, Player.transform.forward, out hit, 100, 1 << 8))
        {
            target = hit.transform.gameObject;
        }
        if (target != null && Vector3.Distance(Player.transform.position, target.transform.position) > 35)
        {
            target = null;
        }
        if (target != null && target.CompareTag("Pylon") )
        {
            if (target.gameObject.GetComponent<BossPartsHealth>().Alive == false)
            {
                target = null;
            }
        }

       
        SetcamSmoothDampTime = camSmoothDampTimeNonLock;

        CameraLook();

    }
    public void LockedOn()
    {
        LockedOnTarget = true;
      
        
        CameraLock();
        if ((target != null && Vector3.Distance(Player.transform.position, target.transform.position) > 35) || (target != null && Vector3.Distance(transform.position, follow.transform.position) > 35))
        {
            target = null;
            CurrentLockState = States.NonLockedOnState;
        }
        if (target != null && target.CompareTag("Pylon"))
        {
            if (target.gameObject.GetComponent<BossPartsHealth>().Alive == false)
                {
                target = null;

                CurrentLockState = States.NonLockedOnState;
            }

        }

        SetcamSmoothDampTime = camSmoothDampTimeLock;

    }
    bool correct = false;
    public void CameraLook()
    {

        x += Input.GetAxis("Mouse X") * MouseXSpeed * distance * 0.01f;
        y -= Input.GetAxis("Mouse Y") * MouseYSpeed * 0.02f;

        x += Controller.RightStickHorizontal * MouseXSpeed * distance * 0.01f;
        y += Controller.RightStickVertical * MouseYSpeed * 0.1f;
        
        //if (Input.GetAxis("Mouse X") != 0 || Input.GetAxis("Mouse Y") != 0 || moving == true || Input.GetAxis("XboxRightStickX") > 0|| Input.GetAxis("XboxRightStickY") > 0 || Input.GetAxis("XboxRightStickX") < 0 || Input.GetAxis("XboxRightStickY") < 0)
        //{
        //    SetAfkTime = AfkTime;
        //}
        //else
        //{
        //    SetAfkTime -= DT;
        //}

        //if (SetAfkTime < 0)
        //{
        //    CurrentIdleState = States.IdleCamMovementAFK;
        //}

        y = ClampAngle(y, -50, 80);

        Vector3 position;

        Quaternion rotation = Quaternion.Euler(y, x, 0);

        if (PlayerController.Sprint || PlayerController.Dash)
        {
            minViewDist = 3;
            maxViewDist = 4;
        }
        else
        {
            minViewDist = 1;
            maxViewDist = 3;
        }

        distance = Mathf.Clamp(distance, minViewDist, maxViewDist);
        Vector3 negDistance;
        RaycastHit hit;
        
        if (Physics.Linecast(follow.position, transform.position, out hit))
        {
            if (!hit.collider.isTrigger)
            {
                distance -= hit.distance;
                correct = true;
            }
        }
        if (correct)
        {


            if (!Physics.Raycast(transform.position, -transform.forward, out hit, 3))
            {
                distance += DT;
            }
            else if (Physics.Raycast(transform.position, -transform.forward, out hit, 3))
            {

            }

            if(distance >= maxViewDist)
            {
                correct = false;
            }
        }


        negDistance = new Vector3(0.0f, 0.0f, -distance);
        position = rotation * negDistance + follow.position;
        if (!PlayerController.moved && (Input.GetAxis("Mouse X") != 0 || Input.GetAxis("Mouse Y") != 0 || Controller.RightStickVertical != 0 || Controller.RightStickHorizontal != 0))
        {
            tempDamp = 50;
        }
        else if (Input.GetAxis("Mouse X") != 0 || Input.GetAxis("Mouse Y") != 0 || Controller.RightStickVertical != 0 || Controller.RightStickHorizontal != 0 )
        {
            tempDamp += DT * 50;
        }
        else
        {
            tempDamp -= DT * 50;
        }
        tempDamp = Mathf.Clamp(tempDamp, 2, 50);
       
        var fwd = transform.forward;

        var direct = (follow.position - transform.position).normalized;

        var lkat = Vector3.Slerp(fwd, direct, DT * tempDamp);

        transform.LookAt(lkat + transform.position, Vector3.up);

        smoothPosition(transform.position, position);

        x += Input.GetAxis("Horizontal") * HorzSpeed * distance * .03f;

        if(target != null)
        {
            Vector3 screenPoint = cam.WorldToViewportPoint(target.transform.position);

            if (screenPoint.x < 0 || screenPoint.x > 1 || screenPoint.y < 0 || screenPoint.y > 1)
            {
                target = null;
            }
            
        }
    }

    public void CameraLock()
    {

        

        Vector3 screenPoint = cam.WorldToViewportPoint(follow.position);
        bool onScreenRight = screenPoint.x > .51f;
        bool onScreenLeft = screenPoint.x < .49f;

        
        if(screenPoint.x > .6f)
        {
            x -= HorzSpeed * DT * 7;
        }
        else if (screenPoint.x > .51f)
        {
            x -= HorzSpeed * DT * 2;
        }
        else if(screenPoint.x < .3f)
        {
            x += HorzSpeed * DT * 7;
        }
        else if (screenPoint.x < .49f)
        {
            x += HorzSpeed * DT * 2;
        }
        if (screenPoint.y < .5f)
        {
           y -= HorzSpeed * DT * 3;
        }

        y = ClampAngle(y,10, 80);

        Vector3 position;
       
        Quaternion rotation = Quaternion.Euler(y, x, 0);
        

        distance = Mathf.Clamp(distance, 1, 100);

        RaycastHit hit;

        distance = Vector3.Distance(follow.position, target.transform.position) + 5;


        if (Physics.Linecast(follow.position, transform.position, out hit) )
        {
            if (!hit.collider.isTrigger)
            {
                distance -= hit.distance;
                correct = true;
            }
        }
        if (correct)
        {


            if (!Physics.Raycast(transform.position, -transform.forward, out hit, 3))
            {
                distance += DT;
            }
            else if (Physics.Raycast(transform.position, -transform.forward, out hit, 3))
            {
               
            }

            if (distance >= maxViewDist)
            {
                correct = false;
            }
        }

        Vector3 negDistance = new Vector3(0.0f, 0.0f, -distance);
        position = rotation * negDistance + target.transform.position;
       
        var fwd = transform.forward;
        var direct = (target.transform.position - transform.position).normalized;
        var lkat = Vector3.Slerp(fwd, direct, DT * TempTargetDamp);

        transform.LookAt(lkat + transform.position, Vector3.up);

        smoothPosition(transform.position, position);
    }

    public void DoCamMove()
    {
        switch (CurrentLockState)
        {
            case States.NonLockedOnState:
                NonLockedOn();
                break;
            case States.LockedOnState:
                LockedOn();
                break;
        }

    }
  
    public void DoCamMoveAfk()
    {
        float Xmove = Input.GetAxis("Mouse X");
        float Ymove = Input.GetAxis("Mouse Y");
        

        if (Xmove != 0 || Ymove != 0 || Controller.Horizontal != 0 || Controller.Vertical != 0)
        {
            CurrentIdleState = States.IdleCamMovement;
        }
        x += DT * 5;
        y += DT * 5;

        
        y = ClampAngle(y, -50, 20);

        Quaternion rotation = Quaternion.Euler(y, x, 0);

        desiredDist += DT * 1;

        desiredDist = Mathf.Clamp(desiredDist, minViewDist, maxViewDist);
        correctedDistance = desiredDist;

        Vector3 position = (Player.transform.position + new Vector3(0, 1.5f, 0)) - (rotation * Vector3.forward * desiredDist);

        RaycastHit hit;
        Vector3 cameraTargPos = new Vector3(Player.transform.position.x, Player.transform.position.y + PlayerHeight, Player.transform.position.z);

        bool isCorrected = false;

        if (Physics.Linecast(Player.transform.position, position, out hit))
        {
            position = hit.point;
            correctedDistance = Mathf.Lerp(currentDist, Vector3.Distance(cameraTargPos, position), DT * 10);
            isCorrected = true;
        }

        currentDist = !isCorrected || correctedDistance > currentDist ? Mathf.Lerp(currentDist, correctedDistance, DT) : correctedDistance;

        position = Player.transform.position - (rotation * Vector3.forward * currentDist + new Vector3(0, -PlayerHeight, 0));


        transform.rotation = rotation;
        smoothPosition(transform.position,position);


    }
    private Transform trans;
    CursorLockMode wantedMode;
    void LateUpdate ()
    {
        DT = DeltaTime.DT;
        playerWatch();
        KeyInput();
        switch (CurrentState)
        {
            case States.NonCombatCamState:
                CamMoveState();
                break;  
            case States.CombatCamState:
                CombatMoveCamState();
                break;
        }


        if (Input.GetKeyDown(KeyCode.Escape) && Screen.lockCursor == true)
        {
            Cursor.lockState = CursorLockMode.None;
           
        }
        else if (Input.GetKeyDown(KeyCode.Escape) && Screen.lockCursor == false)
        {
            Cursor.lockState = CursorLockMode.Locked;
           
        }
        

    }
}
