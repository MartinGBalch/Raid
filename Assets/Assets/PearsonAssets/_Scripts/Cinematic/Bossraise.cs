using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Bossraise : MonoBehaviour {

    private CameraShake Shake;
    private ThirdPersonPlayerController Player;
    public Light SpotLight, DirectionalLight;
    float DT;
    bool runOnce = true;
    bool run = true;
    public AudioSource Quake, music;
    public GameObject Boss;
    public GameObject Pylons;
    public ParticleSystem[] dust,beam;
	// Use this for initialization
	void Start () {

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
                DT = Time.deltaTime;
                if (runOnce)
                {
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

                
                transform.position += new Vector3(0, DT*2, 0);
                Pylons.transform.position += new Vector3(0, DT, 0);
                SpotLight.intensity -=  DT * 20;
                SpotLight.spotAngle += DT * 4;
                DirectionalLight.intensity += DT * .5f;

                SpotLight.intensity = Mathf.Clamp(SpotLight.intensity, 10, 100);

                SpotLight.spotAngle = Mathf.Clamp(SpotLight.spotAngle, 1, 115);

                DirectionalLight.intensity = Mathf.Clamp(DirectionalLight.intensity, 0, 3);

                transform.position = new Vector3(transform.position.x, Mathf.Clamp(transform.position.y, -5.57f, 11f), transform.position.z);
                Pylons.transform.position = new Vector3(Pylons.transform.position.x, Mathf.Clamp(Pylons.transform.position.y, 15, 21.16f), Pylons.transform.position.z);
                if (transform.position.y >= 10.68)
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
                }

            }
        }
		
	}
}
