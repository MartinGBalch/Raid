using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
public class EnergyCharge : MonoBehaviour
{

    public float Energy;
    public float MaxEnergy;
    public Image Bar;

    public float SuperEnergy;
    public float SuperMaxEnergy;
    public Image SuperBar;
    public ParticleSystem[] Charge;
    private ThirdPersonPlayerController player;
    public SuperState super;
    void Start()
    {
        super = GetComponent<SuperState>();
        player = FindObjectOfType<ThirdPersonPlayerController>();
        Energy = 100;
        SuperEnergy = 100;
        MaxEnergy = Energy;
        SuperMaxEnergy = SuperEnergy;
    }
	void Update()
    {
        Energy = Mathf.Clamp(Energy, 0, MaxEnergy);
        Energy += Time.deltaTime;
        Bar.fillAmount = Energy / MaxEnergy;

        SuperEnergy = Mathf.Clamp(SuperEnergy, 0, SuperMaxEnergy);
        SuperEnergy += Time.deltaTime * 2;
        SuperBar.fillAmount = SuperEnergy / SuperMaxEnergy;
        if (player.MV.Armed)
        {
            if (SuperEnergy >= SuperMaxEnergy)
            {
                if (super.Charge != 0)
                {
                    if (Charge[super.Charge - 1].isPlaying == false)
                    {
                        Charge[super.Charge - 1].Play();
                        for (int i = 0; i < Charge.Length; i++)
                        {
                            if (super.Charge != 0)
                            {
                                if (i != super.Charge - 1)
                                {
                                
                                    Charge[i].Stop();
                                }
                            }
                        }
                    }
                }
            }
            else
            {
                Charge[super.Charge - 1].Stop();
            }
        }
            // = SuperEnergy;
    }
}
