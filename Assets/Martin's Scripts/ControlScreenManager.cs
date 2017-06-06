using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;


public class ControlScreenManager : MonoBehaviour
{
    public GameObject XboxControls;
    public GameObject KeyboardControls;
    public GameObject PS4Controls;
    public GameObject ControlPicker;

    public Image XboxControl;
    public Image KeyboardControl;
    public Image PS4Control;
    public Image ControlsPicker;


    public FadeManager wayback;
    public ControllerSupport controller;
    // Use this for initialization
    void Start ()
    {
        ControlPicker.SetActive(true);
        XboxControls.SetActive(false);
        KeyboardControls.SetActive(false);
        PS4Controls.SetActive(false);
    }
	
	// Update is called once per frame
	void Update ()
    {
        if(XboxControl.isActiveAndEnabled || KeyboardControl.isActiveAndEnabled || PS4Control.isActiveAndEnabled && controller.Fire)
        {
            ControlPicker.SetActive(true);
            XboxControls.SetActive(false);
            KeyboardControls.SetActive(false);
            PS4Controls.SetActive(false);
        }
        
        if (ControlsPicker.isActiveAndEnabled && controller.Fire)
        {
            wayback.ControlMenu.SetActive(false);
            wayback.ButtonMenu.SetActive(true);
        }

    }

    public void LoadXboxControls()
    {
        XboxControls.SetActive(true);
        KeyboardControls.SetActive(false);
        PS4Controls.SetActive(false);
    }

    public void LoadKeyboardControls()
    {
        XboxControls.SetActive(false);
        KeyboardControls.SetActive(true);
        PS4Controls.SetActive(false);
    }

    public void LoadPS4Controls()
    {
        XboxControls.SetActive(false);
        KeyboardControls.SetActive(false);
        PS4Controls.SetActive(true);
    }

    public void Back()
    {
        ControlPicker.SetActive(true);
        XboxControls.SetActive(false);
        KeyboardControls.SetActive(false);
        PS4Controls.SetActive(false);

    }

    public void wayBack()
    {
        wayback.ControlMenu.SetActive(false);
        wayback.ButtonMenu.SetActive(true);
       
    }
   
}
