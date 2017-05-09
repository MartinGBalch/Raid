using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AoEdmg : MonoBehaviour {

    public float Dmg;
    public float AtkSpeed;
    private float StartSpeed;
    public float LifeTime;

    void OnTriggerStay(Collider collider)
    {
        var player = collider.GetComponent<PlayerHealth>();

        AtkSpeed -= Time.deltaTime;
       
        if (AtkSpeed <= 0)
        {
            if (player != null)
            {
                player.TakeDamage(Dmg);
                AtkSpeed = StartSpeed;
            }
        }
    }


    // Use this for initialization
    void Start()
    {
        StartSpeed = AtkSpeed;
    }

    // Update is called once per frame
    void Update()
    {
        LifeTime -= Time.deltaTime;
        if (LifeTime <= 0)
        {
            Destroy(gameObject);
        }
    }
}
