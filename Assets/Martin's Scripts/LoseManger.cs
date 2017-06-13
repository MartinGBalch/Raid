﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class LoseManger : MonoBehaviour
{
    public static LoseManger Instance { set; get; }

    bool die;

    public Canvas LoseOverlay;
    public GameObject GameUI;

    public Text LoseText;
    public Text restart;
    public Text Menu;
    public Image Overlay;

    public ControllerSupport controller;
    private PlayerHealth hp;

    private bool isInTransition;
    private bool isShowing;

    private float transition;
    private float duration;
   

    public Color buttonColor;
    public Color titleColor;
    public Color overlayColor;

    public float timer;
    public string RestartScene;
    public string MenuScene;

    private void Awake() { Instance = this; }

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
        GameUI.SetActive(true);
        LoseOverlay.enabled = false;
        LoseText.enabled = false;
        restart.enabled = false;
        Menu.enabled = false;
        Overlay.enabled = false;
        hp = FindObjectOfType<PlayerHealth>();
    }
	
	
	// Update is called once per frame
	void Update ()
    {
       

        if (hp.Health <= 0 && die == false)
        {
            Fade(true, timer);
            Cursor.visible = true;
            LoseOverlay.enabled = true;
            LoseText.enabled = true;
            restart.enabled = true;
            Menu.enabled = true;
            Overlay.enabled = true;
            GameUI.SetActive(false);
            die = true;
        }

            if (!isInTransition)
                return;

            transition += (isShowing) ? Time.deltaTime * (1 / duration) : -Time.deltaTime * (1 / duration);

            //enter.color = Color.Lerp(Color.black, new Color(1,0,0,.5f), transition);
            LoseText.color = Color.Lerp(new Color(0, 0, 0, 0), titleColor, transition);
            restart.color = Color.Lerp(new Color(0, 0, 0, 0), buttonColor, transition);
            Menu.color = Color.Lerp(new Color(0, 0, 0, 0), buttonColor, transition);
            Overlay.color = Color.Lerp(new Color(1, 1, 1, 1), overlayColor, transition);
    
            if (transition > 1 || transition < 0)
            {
                isInTransition = false;
            }
        
    }
	

    public void AmKill()
    {
        Fade(true, timer);
        Cursor.visible = true;
        LoseText.enabled = true;
        restart.enabled = true;
        Menu.enabled = true;
        Overlay.enabled = true;
        GameUI.SetActive(false);
    }

    public void Restart()
    {
        SceneManager.LoadScene(RestartScene);
    }

    public void GoToMenu()
    {
        SceneManager.LoadScene(MenuScene);
    }
}
