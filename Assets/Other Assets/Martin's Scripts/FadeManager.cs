﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;


public class FadeManager : MonoBehaviour
{
    public static FadeManager Instance { set; get; }

    public Canvas ButtonMenu;
    public Canvas TitleMenu;

    public Button b_play;
    public Button b_enter;
    public Text title;
    public Text l_title;
    public Text play;
    public Text start;
    public Text quit;

    private bool isInTransition;
    private bool isShowing;

    private float transition;
    private float duration;
   
    
    

    private void Awake()
    {
        Instance = this;
        
    }

    public void Fade(bool showing, float duration)
    {
        isShowing = showing;
        isInTransition = true;
        this.duration = duration;
        transition = (isShowing) ? 0 : 1;
        
    }

	// Use this for initialization
	void Start () { play.enabled = false; ButtonMenu.enabled = false; }
	// Update is called once per frame
	void Update ()
    {
        //if (Input.GetKeyDown(KeyCode.Return))
        //{
        //    Fade(true, 3);
        //    Cursor.visible = true;
        //    enter.enabled = false;
        //    play.enabled = true;
        //}

        

        if (!isInTransition)
            return;

        transition += (isShowing) ? Time.deltaTime * (1 / duration) : -Time.deltaTime * (1 / duration);
       
        //enter.color = Color.Lerp(Color.black, new Color(1,0,0,.5f), transition);
        play.color = Color.Lerp(new Color(0,0,0,0), new Color(.75f,0,0,.5f), transition);
        start.color = Color.Lerp(new Color(0, 0, 0, 0), new Color(.75f, 0, 0, .5f), transition);
        quit.color = Color.Lerp(new Color(0, 0, 0, 0), new Color(.75f, 0, 0, .5f), transition);




        if (transition > 1 || transition < 0)
        {
            isInTransition = false;
        }
	}


    public void  Play()
    {
        Debug.Log("Damn");
    }

    public void Enter()
    {
        Fade(true, 2);
        Cursor.visible = true;
        title.enabled = false;
        l_title.enabled = false;
        play.enabled = true;
        ButtonMenu.enabled = true;
        TitleMenu.enabled = false;
    }
  
}
