using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnergyCharge : MonoBehaviour
{

    public float Energy;


    void Start()
    {
        Energy = 100;
    }
	void Update()
    {
        Energy = Mathf.Clamp(Energy, 0, 100);
        Energy += Time.deltaTime;

    }
}
