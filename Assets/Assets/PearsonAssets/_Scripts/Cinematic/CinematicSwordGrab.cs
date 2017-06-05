using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CinematicSwordGrab : MonoBehaviour {

    public ControllerSupport Controller;
    public GameObject sword, sword2;
    public bool Grabbed;
    public ThirdPersonPlayerController Player;
    public ParticleSystem Obsorb;

    public AudioSource obsorb;

	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}


    public void OnTriggerStay(Collider other)
    {
        if (other.CompareTag("Player"))
            {
            float DT;
            DT = Time.deltaTime;
            if (Input.GetKey(KeyCode.E) || Controller.GrabButton)
            {

                Controller.GrabButton = false;
                Grabbed = true;
                Obsorb.Play();
                Player.anim.SetTrigger("Grab");
                Player.MV.grabed = true;
                if (obsorb.isPlaying == false)
                {
                    obsorb.Play();
                }
            }
            if (Grabbed == true)
            {
                sword.transform.localScale -= new Vector3(DT * .2f, DT * .2f, DT * .2f);
                sword2.transform.localScale += new Vector3(DT * .2f, DT * .2f, DT * .2f);
            }
            if (sword.transform.localScale.x <= 0)
            {
                Grabbed = false;
                obsorb.Stop();
                Player.MV.Armed = true;
                Player.anim.SetTrigger("EndGrab");
                Player.MV.grabed = false;
                Destroy(Obsorb);
                Destroy(gameObject);
               
            }

            sword.transform.localScale = new Vector3(Mathf.Clamp(sword.transform.localScale.x, 0, 1), Mathf.Clamp(sword.transform.localScale.y, 0, 1), Mathf.Clamp(sword.transform.localScale.z, 0, 1));
            sword2.transform.localScale = new Vector3(Mathf.Clamp(sword2.transform.localScale.x, 0, 1), Mathf.Clamp(sword2.transform.localScale.y, 0, 1), Mathf.Clamp(sword2.transform.localScale.z, 0, 1));
        }
    }
}
