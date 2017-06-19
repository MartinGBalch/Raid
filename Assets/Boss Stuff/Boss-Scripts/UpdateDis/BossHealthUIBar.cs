using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
public class BossHealthUIBar : MonoBehaviour {

    BossHealth Health;
    public Slider slider1;
    public Slider slider2;
    public Slider slider3;
    // Use this for initialization
    void Start ()
    {
        Health = FindObjectOfType<BossHealth>();
       
	}
	
	// Update is called once per frame
	void Update ()
    {
        if(Health.ResistDamage == 0)
        {
            slider1.value = 1 * (Health.Stage1Health / (Health.MaxHealth / 3));
            slider2.value = 1 * (Health.Stage2Health / (Health.MaxHealth / 3));
            slider3.value = 1 * (Health.Stage3Health / (Health.MaxHealth / 3));
        }
       else
        {
            slider1.value = 0;
            slider2.value = 0;
            slider3.value = 0;
        }
    }
}
