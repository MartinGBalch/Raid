﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;


public class FadeManager : MonoBehaviour
{
    public static FadeManager Instance { set; get; }

    public Image fadeImage;
    public Button start;
    public Text enter;

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
	void Start () {}
	// Update is called once per frame
	void Update ()
    {
        if (Input.GetKeyDown(KeyCode.Return))
        { Fade(true, 1.25f);}

        

        if (!isInTransition)
            return;

        transition += (isShowing) ? Time.deltaTime * (1 / duration) : -Time.deltaTime * (1 / duration);
        fadeImage.color = Color.Lerp(new Color(1, 1, 1, 0), Color.white, transition);
        enter.color = Color.Lerp(new Color(1, 1, 1, 0), Color.black, transition);


        if (transition > 1 || transition < 0)
        {
            isInTransition = false;
        }
	}

  
}
