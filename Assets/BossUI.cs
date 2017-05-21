using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
public class BossUI : MonoBehaviour {


    Text DUI;
    BossHealth health;
    public GameObject Boss;
    // Use this for initialization
    void Start()
    {
        health = Boss.GetComponent<BossHealth>();
        DUI = GetComponent<Text>();
    }

    // Update is called once per frame
    void Update()
    {
        DUI.text = health.Health.ToString();

        if(health.ResistDamage == 0)
        {
            DUI.enabled = true;
        }
        else
        {
            DUI.enabled = false;
        }
    }
}
