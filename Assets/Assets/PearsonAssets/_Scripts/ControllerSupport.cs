﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ControllerSupport : MonoBehaviour {

    public bool Xbox, PS4;
    public bool Fire, Charge, Attack, Jump, Sprint;
    public float Horizontal, Vertical,Dash,Target,RightStickHorizontal, RightStickVertical;

	// Use this for initialization
	void Start ()
    {
		
	}
	
	// Update is called once per frame
	void Update ()
    {
        if (Xbox && !PS4)
        {
            Charge = Input.GetButtonDown("Xbox X Button");
            Fire = Input.GetButtonUp("Xbox X Button");
            Attack = Input.GetButtonDown("Xbox B Button");
            Jump = Input.GetButtonDown("Xbox A Button");
            Sprint = Input.GetButton("XboxLeftStickPress");
            Horizontal = Input.GetAxis("XboxHorizontal");
            Vertical = Input.GetAxis("XboxVertical");
            Dash = Input.GetAxis("XboxRightTrigger");
            Target = Input.GetAxis("XboxLeftTrigger");
            RightStickHorizontal = Input.GetAxis("XboxRightStickX");
            RightStickVertical = Input.GetAxis("XboxRightStickY");
        }
        else
        {
            Charge = Input.GetButtonDown("PS4SquareButton");
            Fire = Input.GetButtonUp("PS4SquareButton");
            Attack = Input.GetButtonDown("PS4CircleButton");
            Jump = Input.GetButtonDown("PS4XButton");
            Sprint = Input.GetButton("PS4LeftStickPress");
            Horizontal = Input.GetAxis("PS4Horizontal");
            Vertical = Input.GetAxis("PS4Vertical");
            Dash = Input.GetAxis("PS4RightTrigger");
            Target = Input.GetAxis("Ps4LeftTrigger");
            RightStickHorizontal = Input.GetAxis("PS4RightStickX");
            RightStickVertical = Input.GetAxis("PS4RightStickY");
        }
    }
}
