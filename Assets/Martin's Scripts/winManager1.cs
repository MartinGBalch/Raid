using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class winManager1 : MonoBehaviour {

    public static winManager1 Instance { get; set; }
    public Canvas LoseOverlay;
    public GameObject Credits;

    public Text WinText;
    public Text credits;
    public Text Menu;
    public Image Overlay;

    public ControllerSupport controller;

    private bool isInTransition;
    private bool isShowing;

    private float transition;
    private float duration;

    public Color buttonColor;
    public Color titleColor;
    public Color overlayColor;

    public float timer;
    public string MenuScene;
    public string CreditsScene;

    private void Awake() { Instance = this; }

    public void Fade(bool showing, float duration)
    {
        isShowing = showing;
        isInTransition = true;
        this.duration = duration;
        transition = (isShowing) ? 0 : 1;
    }



    // Use this for initialization
    void Start()
    {
        LoseOverlay.enabled = false;
        WinText.enabled = false;
        credits.enabled = false;
        Menu.enabled = false;
        Overlay.enabled = false;
    }


    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Numlock))
        {
            Fade(true, timer);
            Cursor.visible = true;
            LoseOverlay.enabled = true;
            WinText.enabled = true;
            credits.enabled = true;
            Menu.enabled = true;
            Overlay.enabled = true;

        }

        if (!isInTransition)
            return;

        transition += (isShowing) ? Time.deltaTime * (1 / duration) : -Time.deltaTime * (1 / duration);

        //enter.color = Color.Lerp(Color.black, new Color(1,0,0,.5f), transition);
        WinText.color = Color.Lerp(new Color(0, 0, 0, 0), titleColor, transition);
        credits.color = Color.Lerp(new Color(0, 0, 0, 0), buttonColor, transition);
        Menu.color = Color.Lerp(new Color(0, 0, 0, 0), buttonColor, transition);
        Overlay.color = Color.Lerp(new Color(1, 1, 1, 1), overlayColor, transition);

        if (transition > 1 || transition < 0)
        {
            isInTransition = false;
        }

    }


    public void Winning()
    {
        Fade(true, timer);
        Cursor.visible = true;
        WinText.enabled = true;
        credits.enabled = true;
        Menu.enabled = true;
        Overlay.enabled = true;
    }

    public void CreditsTime()
    {
        SceneManager.LoadScene(CreditsScene);
    }

    public void GoToMenu()
    {
        SceneManager.LoadScene(MenuScene);
    }
}
