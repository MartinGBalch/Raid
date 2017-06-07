﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class PauseMenu : MonoBehaviour
{
    public Canvas PauseCanvas;

    public GameObject pauseCanvas;
    public GameObject InGameSettings;
    public GameObject ControlsCanvas;

    public GameObject ControlPicker;
    public GameObject XboxControls;
    public GameObject KeyboardControls;
    public GameObject PS4Controls;
    public GameObject pausePanel;
    public GameObject sm_Background;
    public GameObject Options;

    public Image PausePanel;
    public Image XboxControl;
    public Image KeyboardControl;
    public Image PS4Control;
    public Image ControlsPicker;
    public Image SM_background;

    public ControllerSupport controller;

    public bool paused;
    public string MenuScene;

    float SetTime;

    // Use this for initialization
    public void Start()
    {
        
        paused = false;
        PauseCanvas.enabled = true;
        XboxControls.SetActive(false);
        KeyboardControls.SetActive(false);
        PS4Controls.SetActive(false);
        ControlPicker.SetActive(false);
        pausePanel.SetActive(false);
        sm_Background.SetActive(false);
        Options.SetActive(false);
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Escape) || controller.StartButton)
        {
           //SetTime = Time.timeScale;
            paused = true;
            PauseCanvas.enabled = true;
            pausePanel.SetActive(true);
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
        pausePanel.SetActive(false);
        Cursor.visible = false;
    }
    public void Controls()
    {
        ControlsCanvas.SetActive(true);
        ControlPicker.SetActive(true);
        PauseCanvas.enabled = false;
    }
    public void Settings()
    {
        InGameSettings.SetActive(true);
        Options.SetActive(true);
        sm_Background.SetActive(true);
        PauseCanvas.enabled = false;
    }
    public void ExitToMenu()
    {
        SceneManager.LoadScene(MenuScene);
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
    public void  ControlsBack()
    {
        ControlPicker.SetActive(true);
        XboxControls.SetActive(false);
        KeyboardControls.SetActive(false);
        PS4Controls.SetActive(false);
    }

    public void Back()
    {
        pausePanel.SetActive(true);
        ControlPicker.SetActive(false);
        Options.SetActive(false);
        sm_Background.SetActive(false);
        InGameSettings.SetActive(false);
        PauseCanvas.enabled = true;
    }
}
