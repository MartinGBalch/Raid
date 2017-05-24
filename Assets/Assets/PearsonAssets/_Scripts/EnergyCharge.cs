using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
public class EnergyCharge : MonoBehaviour
{

    public float Energy;
    public Image Bar;

    void Start()
    {
        Energy = 100;
    }
	void Update()
    {
        Energy = Mathf.Clamp(Energy, 0, 100);
        Energy += Time.deltaTime;
        Bar.fillAmount = Energy / 100;
    }
}
