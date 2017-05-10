using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BirdController : MonoBehaviour
{
    public GameObject Player;
    public GameObject Camera;
    private ThirdPersonCameraController CamController;
    private ThirdPersonPlayerController PlayerController;


    private Vector3 velocityCamSmooth = Vector3.zero;
    [SerializeField]
    private float camSmoothDampTimeNonLock, camSmoothDampTimeLock;
    [SerializeField]
    private float SetcamSmoothDampTime = .1f;

    enum States
    {
        idleState,
        idle,
        idleAfk,
    }

    States CurrentState, IdleState;

    void Start()
    {
        CurrentState = States.idleState;
        IdleState = States.idle;
        CamController = Camera.GetComponent<ThirdPersonCameraController>();
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
        x += HorzSpeed * distance * .05f;
        

        y = ClampAngle(y, 0, 80);

        Vector3 position;

        Quaternion rotation = Quaternion.Euler(y, x, 0);

        //if (PlayerController.Sprint)
        //{
        //    MinDistance = 3;
        //    MaxDistance = 7;
        //}
        //else
        //{
        //    MinDistance = 1;
        //    MaxDistance = 3;
        //}

        distance = Mathf.Clamp(distance, MinDistance, MaxDistance);

        RaycastHit hit;
        //if (Physics.Linecast(Player.transform.position, transform.position, out hit))
        //{
        //    distance -= hit.distance;
        //}

        Vector3 negDistance = new Vector3(0.0f, 3.0f, -distance);
        position = rotation * negDistance + Player.transform.position;


        //if (Input.GetAxis("Mouse X") != 0 || Input.GetAxis("Mouse Y") != 0)
        //{
        //    tempDamp += DT * 15;
        //}
        //else
        //{
        //    tempDamp -= DT * 10;
        //}
        tempDamp = Mathf.Clamp(tempDamp, 1, 20);

        //var fwd = transform.forward;

        //var direct = (Player.transform.position - transform.position).normalized;

        //var lkat = Vector3.Slerp(fwd, direct, DT * tempDamp);


        //transform.LookAt(lkat + transform.position, Vector3.up);

        Vector3 oldPos = transform.position;
        smoothPosition(transform.position, position);

        Vector3 dirMov = (transform.position - oldPos).normalized;

        transform.forward = dirMov;
        //transform.right = Player.transform.position - transform.position;
        


    }
    public void DoIdleAfk()
    {

    }


    float DT;
    void FixedUpdate()
    {
        DT = Time.deltaTime;
        switch(CurrentState)
        {
            case States.idleState:
                DoIdle();
                break;

        }
    }
}
