using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HealthPack : MonoBehaviour
{
    private bool shrink = false;
    public ParticleSystem poof;
    public bool Active;
    public float RespawnTime;
    float spawntime;
    public GameObject Orb;
    public AudioSource Sound;
    private void Update()
    {
        spawntime -= Time.deltaTime;

        if (RespawnTime < 0 && Active == false)
        {

            Active = true;

            Orb.SetActive(true);
        }
    }

    void OnTriggerEnter(Collider other)
    {

        if (other.CompareTag("Player"))
        {
            if (Active)
            {
                if (other.GetComponent<PlayerHealth>().Health < other.GetComponent<PlayerHealth>().MaxHealth)
                {
                    other.GetComponent<PlayerHealth>().Health += (other.GetComponent<PlayerHealth>().MaxHealth * .2f);
                    spawntime = RespawnTime;
                    poof.Play();
                    Active = false;
                    Sound.Play();
                    Orb.SetActive(false);
                }

            }
        }

    }
}
