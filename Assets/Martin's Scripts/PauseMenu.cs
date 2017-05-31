using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class PauseMenu : MonoBehaviour
{
    public Canvas PauseCanvas;
    //public Canvas InGameSettings;
    //public Canvas ControlsCanvas;

    //public Image XboxControls;
    //public Image KeyboardControls;
    //public Image PS4Controls;

    public bool paused;

    float SetTime;

    public ControllerSupport controller;

    // Use this for initialization
    public void Start()
    {
        
        paused = false;
        PauseCanvas.enabled = false;
        //InGameSettings.enabled = false;
        //ControlsCanvas.enabled = false;
        //ControlsCanvas.GetComponent<Canvas>().enabled = false;
        //ControlsCanvas.
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Escape) || controller.StartButton)
        {
           //SetTime = Time.timeScale;
            paused = true;
            PauseCanvas.enabled = true;
            Cursor.visible = true;
        }
        if (paused)
        {
            Time.timeScale = 0;
        }
        else if (!paused)
        {
            Time.timeScale = 1;
        }

    }

    public void Resume()
    {
        PauseCanvas.enabled = false;
        paused = false;
    }

    public void ExitToMenu()
    {
        SceneManager.LoadScene("Menu");
    }

    //public void Settings()
    //{
    //    InGameSettings.enabled = true;
    //}

    //public void Controls()
    //{
    //    ControlsCanvas.enabled = true;
    //}

    //public void Back()
    //{
    //    PauseCanvas.enabled = true;
    //    InGameSettings.enabled = false;
    //    ControlsCanvas.enabled = false;
        
       
    //}

    //public void LoadXboxControls()
    //{
    //    XboxControls.enabled = true;
    //    KeyboardControls.enabled = false;
    //    PS4Controls.enabled = false;
    //}

    //public void LoadKeyboardControls()
    //{
    //    XboxControls.enabled = false;
    //    KeyboardControls.enabled = true;
    //    PS4Controls.enabled = false;
    //}

    //public void LoadPS4Controls()
    //{
    //    XboxControls.enabled = false;
    //    KeyboardControls.enabled = false;
    //    PS4Controls.enabled = true;
    //}
}
