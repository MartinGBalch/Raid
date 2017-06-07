using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Die : MonoBehaviour {

    public GameObject temp,temp2;
    public ParticleSeek1 seek,seek2;
    public ParticleSystem part;
    private ParticleSystem obsorb;
    private Bossraise boss;
    public GameObject PlayerCam;
    public GameObject Rock;


    public float time = 1;
	void Start () {
        Rock = GameObject.FindGameObjectWithTag("Rock");
        PlayerCam = FindObjectOfType<ThirdPersonCameraController>().gameObject;
        boss = FindObjectOfType<Bossraise>();
        part = GetComponent<ParticleSystem>();
        temp = GameObject.FindGameObjectWithTag("BossMouth");
        obsorb = temp.GetComponent<ParticleSystem>();
        seek2 = temp.GetComponent<ParticleSeek1>();
        seek2.enabled = true;
        temp2 =   GameObject.FindGameObjectWithTag("BossHead") ;
      // obsorb.Play();
    }
	
	// Update is called once per frame
	void Update () {
        time -= Time.deltaTime;
        seek.target = temp.transform;
        if (time <= 0)
        {

            seek.enabled = false;
            if (time <= -1)
            {

                seek2.target = temp2.transform;
                seek2.force = 200;

                obsorb.Stop();
                if (time <= -2)
                {
                    seek2.enabled = false;
                    seek.enabled = false;
                    boss.down = true;
                }
            }

        }
        else
        {
            if (!obsorb.isPlaying)
            {
                obsorb.Play();
            }
        }

        PlayerCam.transform.forward = Vector3.Slerp(PlayerCam.transform.forward, -(PlayerCam.transform.position - Rock.transform.position), Time.deltaTime * 2 );
    }
}
