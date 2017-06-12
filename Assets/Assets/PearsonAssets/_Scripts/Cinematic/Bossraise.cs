using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Bossraise : MonoBehaviour {

    private CameraShake Shake;
    private ThirdPersonPlayerController Player;
    private ThirdPersonCameraController Cam;
    public Light SpotLight, DirectionalLight;
    float DT;
    bool runOnce = true;
    public bool run = true, down = false;
    public AudioSource Quake, music;
    public GameObject Boss;
    public GameObject Pylons;
    public ParticleSystem[] dust,beam;
    public CinematicSwordGrab Grab;
    public bool CanDamage;
    public Animator boss;
	// Use this for initialization
	void Start () {
        Cam = FindObjectOfType<ThirdPersonCameraController>();
     
        Boss.SetActive(false);
        Shake = FindObjectOfType<CameraShake>();
        Player = FindObjectOfType<ThirdPersonPlayerController>();
	}
	
   

	// Update is called once per frame
	void Update ()
    {
      

        if (Player.MV.Armed)
        {
            if (run == true)
            {
                Cam.openinglock = true;
                DT = Time.deltaTime;
                if (runOnce)
                {
                    FindObjectOfType<BirdMotor>().cinematic = true;
                    runOnce = false;
                    Shake.StartShake(Shake.BossRaiseProperties);
                    Quake.Play();
                    Boss.SetActive(true);
                    for (int i = 0; i < dust.Length; i++)
                    {
                        if(dust[i] != null)
                        {
                            dust[i].Play();
                        }
                    }
                }

                
                transform.position += new Vector3(0, DT*3, 0);
                Pylons.transform.position += new Vector3(0, DT * 2, 0);
                SpotLight.intensity -=  DT * 30;
                SpotLight.spotAngle += DT * 20;
                DirectionalLight.intensity += DT * 5;

                SpotLight.intensity = Mathf.Clamp(SpotLight.intensity, 1, 50);

                SpotLight.spotAngle = Mathf.Clamp(SpotLight.spotAngle, 2.250593f, 100);

                DirectionalLight.intensity = Mathf.Clamp(DirectionalLight.intensity, 0, 6);

                transform.position = new Vector3(transform.position.x, Mathf.Clamp(transform.position.y, -13f, 11f), transform.position.z);
                Pylons.transform.position = new Vector3(Pylons.transform.position.x, Mathf.Clamp(Pylons.transform.position.y, 15, 21f), Pylons.transform.position.z);
                if (SpotLight.spotAngle >= 99.9f && Pylons.transform.position.y >= 20.9f)
                {
                    music.Play();
                    for (int i = 0; i < beam.Length; i++)
                    {
                        if (beam[i] != null)
                        {
                            beam[i].Play();
                        }
                    }
                    run = false;
                    runOnce = true;
                    CanDamage = true;
                }

            }
            else if (down == true)
            {
                DT = Time.deltaTime;
                if (runOnce)
                {
                    runOnce = false;
                    Shake.StartShake(Shake.BossRaiseProperties);
                    Quake.Play();;
                    for (int i = 0; i < dust.Length; i++)
                    {
                        if (dust[i] != null)
                        {
                            dust[i].Play();
                        }
                    }
                }

                
                Pylons.transform.position -= new Vector3(0, DT *2, 0);
                //SpotLight.intensity += DT * 10;
                SpotLight.spotAngle -= DT * 20;
                DirectionalLight.intensity -= DT * 5;

                SpotLight.intensity = Mathf.Clamp(SpotLight.intensity, 1, 50);

                SpotLight.spotAngle = Mathf.Clamp(SpotLight.spotAngle, 2.250593f, 115);

                DirectionalLight.intensity = Mathf.Clamp(DirectionalLight.intensity, 0, 6);

                transform.position = new Vector3(transform.position.x, Mathf.Clamp(transform.position.y, -13f, 11f), transform.position.z);
                Pylons.transform.position = new Vector3(Pylons.transform.position.x, Mathf.Clamp(Pylons.transform.position.y, 15, 21.16f), Pylons.transform.position.z);
                if (SpotLight.spotAngle <= 2.27 && Pylons.transform.position.y <= 15.01f)
                {
                    music.Stop();
                    for (int i = 0; i < beam.Length; i++)
                    {
                        if (beam[i] != null)
                        {
                            beam[i].enableEmission = false;
                        }
                    }
                    for (int i = 0; i < dust.Length; i++)
                    {
                        if (dust[i] != null)
                        {
                            dust[i].Stop();
                        }
                    }
                    down = false;
                    runOnce = true;
                    Grab.gameObject.SetActive(true);
                    Grab.die = true;
                    
                }

            }
        }
		
	}
}
