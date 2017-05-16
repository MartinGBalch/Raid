using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HealthPack : MonoBehaviour
{
    void OnTriggerEnter(Collider other)
    {

        if(other.CompareTag("Player"))
        {if (other.GetComponent<PlayerHealth>().Health != other.GetComponent<PlayerHealth>().MaxHealth)
            {
                other.GetComponent<PlayerHealth>().Health += (other.GetComponent<PlayerHealth>().MaxHealth * .2f);
            }
            Destroy(gameObject);
        }

    }
}
