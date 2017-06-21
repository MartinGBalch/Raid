using System.Collections;
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
    public Button b_Edit;

    public Text title;
    public Text l_title;
    public Text c_line;
    public Text GameName;
    public Text start;
    public Text setting;
    public Text controls;
    public Text quit;
    public Text TXT_Edit;
    public Text credits;
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
    bool startGame = true;
	// Use this for initialization
	void Start ()
    {
        fader = FindObjectOfType<Fade>();
        Time.timeScale = 1.0f;
        GameName.enabled = false;
        start.enabled = false;
        setting.enabled = false;
        quit.enabled = false;
        startGame = true;
        ButtonMenu.SetActive(false);
        SettingMenu.SetActive(false);
        ControlMenu.SetActive(false);
        play = false;
        edit = false;
        

    }
    bool once;
    float quicktime = .1f;
	// Update is called once per frame
	void Update ()
    {



        if (once == false)
        {
            quicktime -= Time.deltaTime;
            if (quicktime <= 0)
            {
                GameObject[] temp = GameObject.FindGameObjectsWithTag("MenuPlayer");
                GameObject[] temp2 = GameObject.FindGameObjectsWithTag("DragonMenu");
                GameObject[] temp3 = GameObject.FindGameObjectsWithTag("Swordmenu");

                for (int i = 0; i < temp.Length; i++)
                {
                    temp[i].SetActive(false);
                }
                for (int i = 0; i < temp2.Length; i++)
                {

                    temp2[i].SetActive(false);
                }
                for (int i = 0; i < temp3.Length; i++)
                {

                    temp3[i].SetActive(false);
                }

                once = true;
            }
        }
        if (fader.fadedout && play)
        {
            fader.text.SetActive(true);
            SceneManager.LoadScene(PlayScene);
        }
        if (fader.fadedout && edit)
        {
            fader.text.SetActive(true);
            SceneManager.LoadScene("EditMenu");
        }
        if (fader.fadedout && credit)
        {
            fader.text.SetActive(true);
            SceneManager.LoadScene("Credits");
        }
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
            credits.enabled = true;
            TXT_Edit.enabled = true;
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
        if (edit == false && play == false)
        {
            GameName.color = Color.Lerp(new Color(0, 0, 0, 0), titleColor, transition);
            start.color = Color.Lerp(new Color(0, 0, 0, 0), buttonColor, transition);
            quit.color = Color.Lerp(new Color(0, 0, 0, 0), buttonColor, transition);
            setting.color = Color.Lerp(new Color(0, 0, 0, 0), buttonColor, transition);
            controls.color = Color.Lerp(new Color(0, 0, 0, 0), buttonColor, transition);
            TXT_Edit.color = Color.Lerp(new Color(0, 0, 0, 0), buttonColor, transition);
            credits.color = Color.Lerp(new Color(0, 0, 0, 0), buttonColor, transition);
        }
        else
        {

            GameName.color -= new Color(0, 0, 0, 1);
            start.color -= new Color(0, 0, 0, 1);
            quit.color -= new Color(0, 0, 0, 1);
            setting.color -= new Color(0, 0, 0, 1);
            controls.color -= new Color(0, 0, 0, 1);
            TXT_Edit.color -= new Color(0, 0, 0, 1);
            credits.color -= new Color(0, 0, 0, 1);
        }

       

        if (transition > 1 || transition < 0)
        {
            isInTransition = false;
        }
	}
    Fade fader;
    bool play = false;
    public void  Play()
    {
        fader.Out = true;
        play = true;
        ButtonMenu.SetActive(false);
       
    }
    bool edit = false;
    public void Edit()
    {
        fader.Out = true;
        edit = true;
    }

    public void Enter()
    {
        Fade(true, timer);
        Cursor.visible = true;
        GameName.enabled = true;
        start.enabled = true;
        setting.enabled = true;
        quit.enabled = true;
        TXT_Edit.enabled = true;
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

    bool credit = false;
    public void Credits()
    {
        fader.Out = true;
        credit = true;
        ButtonMenu.SetActive(false);
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
