﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;


public class FadeManager : MonoBehaviour
{
    public static FadeManager Instance { set; get; }

    public GameObject ButtonMenu;
    public GameObject TitleMenu;
    public GameObject SettingMenu;
    public GameObject ControlMenu;

    public Canvas SettingsMenu;
    public Canvas ControlsMenu;

    public Button b_play;
    public Button b_enter;
    public Button b_setting;
    public Button b_controls;
    public Button b_exit;
    public Button b_back;

    public Text title;
    public Text l_title;
    public Text c_line;
    public Text GameName;
    public Text start;
    public Text setting;
    public Text controls;
    public Text quit;
    
    private bool isInTransition;
    private bool isShowing;

    private float transition;
    private float duration;

    public Color buttonColor;
    public Color titleColor;

    public float timer;
    public string PlayScene;

    public ControllerSupport controller;

    private void Awake() {Instance = this;}

    public void Fade(bool showing, float duration)
    {
        isShowing = showing;
        isInTransition = true;
        this.duration = duration;
        transition = (isShowing) ? 0 : 1;
    }

	// Use this for initialization
	void Start ()
    {
        Time.timeScale = 1.0f;
        GameName.enabled = false;
        start.enabled = false;
        setting.enabled = false;
        quit.enabled = false;
        
        ButtonMenu.SetActive(false);
        SettingMenu.SetActive(false);
        ControlMenu.SetActive(false);

             
    }
	// Update is called once per frame
	void Update ()
    {
        if (controller.StartButton)
        {
            Fade(true, timer);
            Cursor.visible = true;
            controller.StartButton = false;
            
            ButtonMenu.SetActive(true);
            TitleMenu.SetActive(false);

            GameName.enabled = true;
            start.enabled = true;
            setting.enabled = true;
            quit.enabled = true;
        }

        if (SettingsMenu.isActiveAndEnabled && controller.Fire)
        {
            SettingMenu.SetActive(false);
            ButtonMenu.SetActive(true);
        }

        if (ControlsMenu.isActiveAndEnabled && controller.Fire)
        {
            SettingMenu.SetActive(false);
            ButtonMenu.SetActive(true);
        }


        if (!isInTransition)
            return;

        transition += ((isShowing) ? 1 : -1) * Time.deltaTime * (1 / duration);
       
        //enter.color = Color.Lerp(Color.black, new Color(1,0,0,.5f), transition);
        GameName.color = Color.Lerp(new Color(0,0,0,0), titleColor, transition);
        start.color = Color.Lerp(new Color(0, 0, 0, 0), buttonColor, transition);
        quit.color = Color.Lerp(new Color(0, 0, 0, 0), buttonColor, transition);
        setting.color = Color.Lerp(new Color(0, 0, 0, 0), buttonColor, transition);
        controls.color = Color.Lerp(new Color(0, 0, 0, 0), buttonColor, transition);




        if (transition > 1 || transition < 0)
        {
            isInTransition = false;
        }
	}


    public void  Play()
    {
		SceneManager.LoadScene(PlayScene);
    }

    public void Enter()
    {
        Fade(true, timer);
        Cursor.visible = true;
        GameName.enabled = true;
        start.enabled = true;
        setting.enabled = true;
        quit.enabled = true;
        ButtonMenu.SetActive(true);
        TitleMenu.SetActive(false);
    }

    public void Settings()
    {
        SettingMenu.SetActive(true);
        ButtonMenu.SetActive(false);
    }

    public void Controls()
    {
        ButtonMenu.SetActive(false);
        ControlMenu.SetActive(true);
    }

    public void Back()
    {
        SettingMenu.SetActive(false);
        TitleMenu.SetActive(true);
    }

    public void Exit()
    {
        Application.Quit();
    }
  
}
