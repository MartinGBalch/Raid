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
      

    }

    public void LoadXboxControls()
    {
        ControlPicker.SetActive(false);
        XboxControls.SetActive(true);
        KeyboardControls.SetActive(false);
        PS4Controls.SetActive(false);
        
    }

    public void LoadKeyboardControls()
    {
        ControlPicker.SetActive(false);
        KeyboardControls.SetActive(true);
        XboxControls.SetActive(false);
        PS4Controls.SetActive(false);
        
    }

    public void LoadPS4Controls()
    {
        ControlPicker.SetActive(false);
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
