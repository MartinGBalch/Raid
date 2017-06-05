using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FistCollision : MonoBehaviour {

    public float timer;
    bool IsDamage = false;
    private float ActualTimer;
    public float Dmg;
    private TimeManager DeltaTime;
    float DT;
    private GameObject hit;
    private ParticleSystem poof;
    private CameraShake Shake;
    void Awake ()
    {
        Shake = FindObjectOfType<CameraShake>();
        hit = GameObject.FindGameObjectWithTag("Hiiter");
        poof = hit.GetComponent<ParticleSystem>();
        ActualTimer = timer;
        DeltaTime = FindObjectOfType<TimeManager>();
        if (!poof.isPlaying)
        {
            poof.Play();
        }
    }
	
    void OnTriggerStay(Collider collider)
    {
        if (collider.tag == "Player")
        {
            var player = collider.GetComponent<PlayerHealth>();


            if (IsDamage == true && player != null)
            {
                player.TakeDamage(Dmg);
                IsDamage = false;
                Destroy(gameObject);
                ActualTimer = timer;
            }
        }
            
    }

    // Update is called once per frame
    void Update()
    {
        DT = DeltaTime.DT;
        ActualTimer -= DT;
      

        if (ActualTimer <= 0)
        {
            Shake.StartShake(Shake.BoulderFallProperties);
                IsDamage = true;
        }
        if (ActualTimer <= -1) { Destroy(gameObject);  }
    }
}
