using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CinematicSwordGrab : MonoBehaviour {

    public ControllerSupport Controller;
    public GameObject sword, sword2;
    public bool Grabbed;
    public ThirdPersonPlayerController Player;
    public ParticleSystem Obsorb;
    public ParticleSeek1 seek;
    public AudioSource obsorb;
    public bool die;
	void Start () {
		
	}

    float DT;
    // Update is called once per frame
    void Update () {

        DT = Time.deltaTime;
        if (die)
        {

            if (sword.transform.localScale.x <= .01f)
            {
                seek.enabled = false;
                Obsorb.Play();
                gameObject.SetActive(true);
            }
                sword.transform.localScale += new Vector3(DT * .2f, DT * .2f, DT * .2f);


            if (sword.transform.localScale.x >= .99f)
            {
                Obsorb.Stop();
            }



            sword.transform.localScale = new Vector3(Mathf.Clamp(sword.transform.localScale.x, 0, 1), Mathf.Clamp(sword.transform.localScale.y, 0, 1), Mathf.Clamp(sword.transform.localScale.z, 0, 1));
          
        }
	}


    public void OnTriggerStay(Collider other)
    {
        if (other.CompareTag("Player"))
            {
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
                Obsorb.Stop();
                gameObject.SetActive(false);
                seek.enabled = false;
               
            }

        }
    }
}
