using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ThirdPersonCameraController : MonoBehaviour {
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
    private Camera cam;
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

    public States CurrentState, CurrentIdleState, CurrentMovingState, CurrentCombatMoveState, CurrentLockState;

    void Start()
    {
        cam = GetComponent<Camera>();
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

    public void KeyInput()
    {
        if(Input.GetKeyDown(KeyCode.Q))
        {
            if(CurrentLockState == States.NonLockedOnState)
            {
                CurrentLockState = States.LockedOnState;
            }
            else
            {
                CurrentLockState = States.NonLockedOnState;
            }
        }
    }

    public void NonLockedOn()
    {
        RaycastHit hit;
        if (Physics.Raycast(transform.position, transform.forward, out hit, Mathf.Infinity, 1 << 8))
        {
            target = hit.transform.gameObject;
        }

        if (target != null && Vector3.Distance(transform.position, target.transform.position) > 20)
        {
            target = null;
          

        }

        SetcamSmoothDampTime = camSmoothDampTimeNonLock;

        CameraLook();

    }
    public void LockedOn()
    {
        if (target == null)
        {
            target = ClosetTargetView();
        }
        

        CameraLock();
        if ((target != null && Vector3.Distance(transform.position, target.transform.position) > 20) || (target != null && Vector3.Distance(transform.position, follow.transform.position) > 20))
        {
            target = null;
            CurrentLockState = States.NonLockedOnState;

        }


        SetcamSmoothDampTime = camSmoothDampTimeLock;

    }

    public void CameraLook()
    {

        x += Input.GetAxis("Mouse X") * MouseXSpeed * distance * 0.01f;
        y -= Input.GetAxis("Mouse Y") * MouseYSpeed * 0.02f;

        x += Input.GetAxis("Horizontal") * HorzSpeed * distance * .05f;

        if (Input.GetAxis("Mouse X") != 0 || Input.GetAxis("Mouse Y") != 0 || moving == true)
        {
            SetAfkTime = AfkTime;
        }
        else
        {
            SetAfkTime -= DT;
        }

        if (SetAfkTime < 0)
        {
            CurrentIdleState = States.IdleCamMovementAFK;
        }

        y = ClampAngle(y, -50, 80);

        Vector3 position;

        Quaternion rotation = Quaternion.Euler(y, x, 0);

        if (PlayerController.Sprint)
        {
            minViewDist = 3;
            maxViewDist = 7;
        }
        else
        {
            minViewDist = 1;
            maxViewDist = 3;
        }

        distance = Mathf.Clamp(distance, minViewDist, maxViewDist);

        RaycastHit hit;
        if (Physics.Linecast(follow.position, transform.position, out hit))
        {
            distance -= hit.distance;
        }

        Vector3 negDistance = new Vector3(0.0f, 0.0f, -distance);
        position = rotation * negDistance + follow.position;


        if (Input.GetAxis("Mouse X") != 0 || Input.GetAxis("Mouse Y") != 0)
        {
            tempDamp += DT * 15;
        }
        else
        {
            tempDamp -= DT * 10;
        }
        tempDamp = Mathf.Clamp(tempDamp, 1, 20);
       
        var fwd = transform.forward;

        var direct = (follow.transform.position - transform.position).normalized;

        var lkat = Vector3.Slerp(fwd, direct, DT * tempDamp);

        transform.LookAt(lkat + transform.position, Vector3.up);

        smoothPosition(transform.position, position);

    }
    public void CameraLock()
    {

        // x -= Input.GetAxis("Horizontal") * HorzSpeed * distance * .01f;

        Vector3 screenPoint = cam.WorldToViewportPoint(follow.position);
        bool onScreenRight = screenPoint.x > .51f;// && screenPoint.x <= .6f && screenPoint.y >= .4f && screenPoint.y <= .6f;
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

        y = ClampAngle(y, -50, 80);

        Vector3 position;

        Quaternion rotation = Quaternion.Euler(y, x, 0);

        //if (PlayerController.Sprint)
        //{
        //    minViewDist = 3;
        //    maxViewDist = 7;
        //}
        //else
        //{
        //    minViewDist = 1;
        //    maxViewDist = 3;
        //}

        distance = Mathf.Clamp(distance, 1, 100);

        RaycastHit hit;
        if (Physics.Linecast(target.transform.position, transform.position, out hit))
        {
            distance -= hit.distance;
        }
      //  bool visible =  follow.renderer

        distance = Vector3.Distance(follow.position, target.transform.position) + 5;


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
        

        if (Xmove != 0 || Ymove != 0)
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
        transform.position = position;


    }
    
    void LateUpdate ()
    {
        DT = Time.deltaTime;
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

        if (Input.GetKey(KeyCode.Escape))
            Screen.lockCursor = false;
        else
            Screen.lockCursor = true;


    }
}
