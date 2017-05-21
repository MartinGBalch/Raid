using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
public class UI : MonoBehaviour {

    Text DUI;
    PlayerHealth health;
    public GameObject Player;
	// Use this for initialization
	void Start ()
    {
        health = Player.GetComponent<PlayerHealth>();
        DUI = GetComponent<Text>();	
	}
	
	// Update is called once per frame
	void Update () {
        DUI.text = health.Health.ToString();

	}
}
