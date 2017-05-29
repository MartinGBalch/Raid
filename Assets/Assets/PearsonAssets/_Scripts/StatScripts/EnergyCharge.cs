using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
public class EnergyCharge : MonoBehaviour
{

    public float Energy;
    public float MaxEnergy;
    public Image Bar;

    void Start()
    {
        Energy = 100;
        MaxEnergy = Energy;
    }
	void Update()
    {
        Energy = Mathf.Clamp(Energy, 0, MaxEnergy);
        Energy += Time.deltaTime;
        Bar.fillAmount = Energy / MaxEnergy;
    }
}
