using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HitSoundManager : MonoBehaviour {

    public AudioSource Hit, Impact;
    public AudioClip[] Hitter, ImpactSounds;
    float destroyTime;
	// Use this for initialization
	void Start () {
        destroyTime = 2;
	}
	
	// Update is called once per frame
	void Update ()
    {
        destroyTime -= Time.deltaTime;

        if (destroyTime <= 0)
        {
            Destroy(gameObject);
        }
        else if(destroyTime >= 1.9)
        {
            Impact.PlayOneShot(Hitter[0]);
            Hit.PlayOneShot(ImpactSounds[Random.Range(0, 2)]);
        }
		
	}
}
