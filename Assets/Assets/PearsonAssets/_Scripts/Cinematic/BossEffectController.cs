using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BossEffectController : MonoBehaviour {
    public GameObject[] pts;
    public GameObject[] Slams;
    public ParticleSystem[] screams;
    private ThirdPersonCameraController cam;
    private ThirdPersonPlayerController player;
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
    public GameObject BossByeBye;
    bool fix = false;
    bool start = true;
    public Mesh mesh;
	// Use this for initialization
	void Start () {
        birdy = FindObjectOfType<BirdMotor>();
        anim = GetComponent<Animator>();
        DeltaTime = TimeManager.FindTimeManager();
        opening = true;
        mg = FindObjectOfType<PylonManager>();
        HP = GetComponent<BossHealth>();
        cam = FindObjectOfType<ThirdPersonCameraController>();
        Shake = FindObjectOfType<CameraShake>();
        player = FindObjectOfType<ThirdPersonPlayerController>();
    }
	
	// Update is called once per frame
	void Update () {
        countdown -= DeltaTime.DT;
        if(shrink == true)
        {
            transform.localScale -= new Vector3(DeltaTime.DT * 1.5f, DeltaTime.DT * 1.5f, DeltaTime.DT * 1.5f);
            if(transform.localScale.y <= .01)
            {
                Destroy(gameObject);
            }
        }
		if(opening == true)
        {
            
            if(screams[0].GetComponent<AudioSource>().isPlaying == false && start == false)
            {
                opening = false;
                cam.openinglock = false;
                player.openinglock = false;
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

    public void BeginDie()
    {
        anim.SetBool("Cinematic", true);
        GameObject[] enemies = GameObject.FindGameObjectsWithTag("Enemy");
        for(int i = 0; i < enemies.Length; i++)
        {
            enemies[i].GetComponent<IDamageable>().TakeDamage(100000000);
        }
    }
    public float offset;
    bool shrink;
    public void BossDie()
    {
        Instantiate(BossByeBye, transform.position + new Vector3(0, offset, 0), BossByeBye.transform.rotation);
        shrink = true;
    }
    public AudioSource BossMouth;
    public AudioClip[] Screams;
    public void BossAttackScream()
    {
        BossMouth.PlayOneShot(Screams[0]);
    }
}
