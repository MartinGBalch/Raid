using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
public class Fade : MonoBehaviour {
    public Image black,temp;
	// Use this for initialization
	void Start () {
        temp = black;
	}
	
	// Update is called once per frame
	void Update () {
        black.color = Color.Lerp(temp.color, new Color(0, 0, 0,0),  Time.deltaTime * .3f);
	}
}
