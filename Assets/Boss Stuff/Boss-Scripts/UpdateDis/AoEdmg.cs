using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AoEdmg : MonoBehaviour {

    public float Dmg;
    public float AtkSpeed;
    private float StartSpeed;
    public float LifeTime;
    private TimeManager DeltaTime;
    float DT;
    void OnTriggerStay(Collider collider)
    {
        if (collider.tag == "Player")
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
            
    }


    // Use this for initialization
    void Start()
    {
        DeltaTime = TimeManager.FindTimeManager();
        StartSpeed = AtkSpeed;
    }

    // Update is called once per frame
    void Update()
    {
        DT = DeltaTime.DT;
        LifeTime -= DT;
        if (LifeTime <= 0)
        {
            Destroy(gameObject);
        }
    }
}
