using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BossEffectController : MonoBehaviour {
    public GameObject[] pts;
    public GameObject[] Slams;
    public ParticleSystem[] screams;
    private ThirdPersonCameraController cam;
    private BossHealth HP;
    private CameraShake Shake;
    private TimeManager DeltaTime;
    private PylonManager mg;
    public GameObject[] looks;
    public Animator anim;
    public BirdMotor birdy;
    bool opening = true;
    public int PylonCount;
    public float lookTime;
    float countdown;
    bool fix = false;
    bool start = true;
	// Use this for initialization
	void Start () {
        birdy = FindObjectOfType<BirdMotor>();
        anim = GetComponent<Animator>();
        DeltaTime = FindObjectOfType<TimeManager>();
        opening = true;
        mg = FindObjectOfType<PylonManager>();
        HP = GetComponent<BossHealth>();
        cam = FindObjectOfType<ThirdPersonCameraController>();
        Shake = FindObjectOfType<CameraShake>();

    }
	
	// Update is called once per frame
	void Update () {
        countdown -= DeltaTime.DT;
		if(opening == true)
        {
            
            if(screams[0].GetComponent<AudioSource>().isPlaying == false && start == false)
            {
                opening = false;
                cam.openinglock = false;
                cam.look = looks[3];
                birdy.cinematic = false;
                anim.SetBool("Cinematic", false);

            }
        }
        else
        {
            if(mg.PylonCount > 0 )
            {
                fix = false;
            }

            if (mg.PylonCount == 0 && fix == false)
            {
                if (fix == false)
                {
                    DeltaTime.startSlowMotion(DeltaTime.TestProperties);
                }
                    countdown = lookTime;
                fix = true;
            }

            if(countdown > 0)
            {
                cam.look = looks[3];
                cam.openinglock = true;
            }
            else
            {

                cam.openinglock = false;
            }


        }
	}

    public void BossHandLandLeft()
    {
        cam.look = looks[2];
        GameObject slammer =  Instantiate(Slams[0], pts[0].transform.position, Slams[0].transform.rotation);
        Destroy(slammer, 10);
    }

    public void BossHandLandRight()
    {

        cam.look = looks[0];
        GameObject slammer = Instantiate(Slams[0], pts[1].transform.position, Slams[0].transform.rotation);
        Destroy(slammer, 10);
    }
    public void BossScream()
    {
        start = false;
        screams[0].Play();
        screams[0].GetComponent<AudioSource>().Play();
    }
    public void BossStopScream()
    {
    }
}
