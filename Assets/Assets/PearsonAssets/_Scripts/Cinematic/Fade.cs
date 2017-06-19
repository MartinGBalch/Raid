using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
public class Fade : MonoBehaviour {
    public Image black, temp;
    private Color temp2;
    public GameObject text;
    public bool In, Out,fadedout,fadedin;
	// Use this for initialization
	void Start () {
        temp2 = black.color;
        temp = black;
        In = true;
        if (text != null)
        {
            text.SetActive(false);
        }
	}
	
	// Update is called once per frame
	void Update () {
        if (In)
        {
            black.enabled = true;
            black.color -= new Color(0, 0, 0, Time.deltaTime * .3f);
            if (black.color.a <= 0)
            {
                black.enabled = false;
                fadedin = true;
                In = false;
            }
        }

        if(Out)
        {
            black.enabled = true;
            black.color += new Color(0, 0, 0, Time.deltaTime * 2);
            if (black.color.a >= 1)
            {
                fadedout = true;
                Out = false;
            }
        }
	}
}
