using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Video;
using UnityEngine.SceneManagement;
public class VideoTrack : MonoBehaviour {
    public VideoPlayer[] player;
    public VideoPlayer credits;
    public Fade fader;
    public int current = 0;
	// Use this for initialization
	void Start () {
        player[current].Play();
	}
    bool stop;
    float stoptimer = .1f;
    public bool startFadeCredits;
	// Update is called once per frame
	void Update () {

        stoptimer -= Time.deltaTime;
        if(startFadeCredits == true)
        {
            if(credits.isPlaying == false)
            {
                SceneManager.LoadScene("Menu");
            }
        }
        if (current != player.Length)
        {
            if (player[current].isPlaying == false && current < player.Length)
            {


                current++;
                player[current].Play();
                stop = true;
                stoptimer = .1f;

            }
            if (stop)
            {
                if (stoptimer <= 0)
                {

                    if (current != 0)
                    {

                        player[current - 1].Stop();
                        stop = false;
                    }
                }
            }
        }
        if(current == player.Length && fader.Out == false && credits.isPlaying == false)
        {
            fader.Out = true;

            
        }
        if (fader.fadedout && startFadeCredits == false)
        {
            fader.In = true;
            credits.Play();
            startFadeCredits = true;
        }
    }
}
