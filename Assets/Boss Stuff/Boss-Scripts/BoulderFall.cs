using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BoulderFall : MonoBehaviour {

    public float dmg;
    public bool Kinetic = true;
    private CameraShake Shake;
    public ParticleSystem land;

    void Destroy()
    {
        gameObject.SetActive(false);
    }
   

    private void OnCollisionEnter(Collision collision)
    {
        if(collision.collider.tag == "Floor")
        {
            Kinetic = false;
            Shake.StartShake(Shake.BoulderFallProperties);
            Instantiate(land, transform.position, land.transform.rotation);
            Invoke("Destroythis", .5f);

        }
        if(collision.collider.tag == "Player" && Kinetic == true)
        {
            var player = collision.gameObject.GetComponent<PlayerHealth>();
            if(player != null)
            {
               
                player.TakeDamage(dmg);
                Invoke("Destroythis", .5f);
            }
        }
    }
    void Destroythis()
    {
        gameObject.SetActive(false);
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
