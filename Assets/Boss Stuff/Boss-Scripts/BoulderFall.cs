using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BoulderFall : MonoBehaviour {

    public float dmg;
    public bool Kinetic = true;
    private CameraShake Shake;
    public ParticleSystem land;
    private void OnCollisionEnter(Collision collision)
    {
        if(collision.collider.tag == "Floor")
        {
            Kinetic = false;
            Shake.StartShake(Shake.BoulderFallProperties);
            Instantiate(land, transform.position, land.transform.rotation);
            Destroy(gameObject, .5f);
        }
        if(collision.collider.tag == "Player" && Kinetic == true)
        {
            var player = collision.gameObject.GetComponent<PlayerHealth>();
            if(player != null)
            {
               
                player.TakeDamage(dmg);
                Destroy(gameObject, .5f);
            }
        }
    }

    // Update is called once per frame
    void Awake()
    {
        Shake = FindObjectOfType<CameraShake>();
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}
}
