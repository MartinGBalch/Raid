using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MaterialChangeScript : MonoBehaviour {
    public bool newobj;
    public GameObject[] Pylons;
    public int desiredObject;
    public bool change;
    public Material[] systems;
    public Renderer[] body;
    public Projectile proj;
	// Use this for initialization
	void Start () {
        proj = FindObjectOfType<Projectile>();
	}
	
	// Update is called once per frame
	void Update () {
        if (newobj)
        {

            for (int f = 0; f < Pylons.Length; f++)
            {

                if (Pylons[f].GetComponent<BossPartsHealth>().Alive)
                {

                    desiredObject = Pylons[f].GetComponent<PylonChargeScript>().chargeNumber - 1;
                    break;
                }

                if (f == Pylons.Length - 1)
                {
                    desiredObject = 4;
                }
            }
            newobj = false;
            change = true;
        }

        if (change)
        {
            for (int i = 0; i < systems.Length; i++)
            {
                if (i == desiredObject)
                {
                    for(int j = 0; j < body.Length; j++)
                    {
                        body[j].sharedMaterial = systems[i];
                    }

                    change = false;
                    break;
                }
            }
            proj.desiredObject = desiredObject;
            
            change = false;
        }
    }

}
