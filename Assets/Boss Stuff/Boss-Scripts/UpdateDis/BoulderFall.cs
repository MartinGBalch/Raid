using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BoulderFall : MonoBehaviour {

    public float dmg;
    public bool Kinetic = true;
    private CameraShake Shake;
    public ParticleSystem land;
    public AudioClip[] landsounds;
    public AudioSource lander;
    void Destroy()
    {
        gameObject.SetActive(false);
    }
    public Transform hold;
    Vector3 setpos;
    private void OnCollisionEnter(Collision collision)
    {
        if(collision.collider.tag == "Floor")
        {
            setpos = land.transform.position;
            Kinetic = false;
            Shake.StartShake(Shake.SlamProperties);
            land.transform.position = setpos;
            land.Play();
            lander.PlayOneShot(landsounds[Random.Range(0, landsounds.Length)]);
            Invoke("DisableThis", .5f);
            //CHANGED "DESTROY" to "Destroythis" TO FIX AN ERROR YOU HAD

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
    void DisableThis()
    {
        GetComponent<SphereCollider>().enabled = false;
        GetComponent<MeshRenderer>().enabled = false;
        Invoke("Destroythis", 1);
    }
    void Destroythis()
    {
        land.transform.position = hold.position;
        GetComponent<SphereCollider>().enabled = true;
        GetComponent<MeshRenderer>().enabled = true;
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
