using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CannonController : MonoBehaviour {
    public GameObject Cam;
    public ThirdPersonCameraController CamController;
	
    enum States
    {
        NonTargetState,
        TargetState
    }

    States CurrentState;

    public void NonTargetMove()
    {
        transform.forward = Cam.transform.forward;
    }
    public void TargetMove()
    {
        transform.LookAt(CamController.target.transform.position);
    }
    public void DecideIfTarget()
    {
        if(CamController.target != null)
        {
            CurrentState = States.TargetState;
        }
        else
        {
            CurrentState = States.NonTargetState;
        }
    }
	// Update is called once per frame
	void FixedUpdate()
    {
        DecideIfTarget();
		switch(CurrentState)
        {
            case States.NonTargetState:
                NonTargetMove();
                break;
            case States.TargetState:
                TargetMove();
                break;
        }



	}
}
