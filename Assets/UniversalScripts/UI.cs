using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
public class UI : MonoBehaviour {

    Text DUI;
    PlayerHealth health;
    BossHealth BossHealth;
    public GameObject Ihealth;
	// Use this for initialization
	void Start ()
    {
        health = Ihealth.GetComponent<PlayerHealth>();
        BossHealth = Ihealth.GetComponent<BossHealth>();
        DUI = GetComponent<Text>();	
	}
	
	// Update is called once per frame
	void Update ()
    {
        if (health != null)
        {
           
            DUI.text = "Health: " + health.Health.ToString();
        }



        if (BossHealth != null && BossHealth.ResistDamage == 0)
        {
            DUI.text = "Health: " + BossHealth.Health.ToString();
        }
        else if (BossHealth != null &&  BossHealth.ResistDamage > 0)
        {
            DUI.text = "Health: ";
        }



    }
}
