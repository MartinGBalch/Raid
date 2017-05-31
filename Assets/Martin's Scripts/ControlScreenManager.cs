using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;


public class ControlScreenManager : MonoBehaviour
{
    public Image XboxControls;
    public Image KeyboardControls;
    public Image PS4Controls;

	// Use this for initialization
	void Start ()
    {
        XboxControls.enabled = true;
        KeyboardControls.enabled = false;
        PS4Controls.enabled = false;
        Cursor.visible = true;	
	}
	
	// Update is called once per frame
	void Update () {}

    public void LoadXboxControls()
    {
        XboxControls.enabled = true;
        KeyboardControls.enabled = false;
        PS4Controls.enabled = false;
    }

    public void LoadKeyboardControls()
    {
        XboxControls.enabled = false;
        KeyboardControls.enabled = true;
        PS4Controls.enabled = false;
    }

    public void LoadPS4Controls()
    {
        XboxControls.enabled = false;
        KeyboardControls.enabled = false;
        PS4Controls.enabled = true;
    }
}
