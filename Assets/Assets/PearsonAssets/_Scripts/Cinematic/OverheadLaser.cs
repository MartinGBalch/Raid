using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class OverheadLaser : MonoBehaviour {

    public bool charge = false,fire = false;
    public float Damage;
    public float ChargeTime,laserTime,laserDelay,chargeDelay;
    float charger, lasertimer, delay,chargedly;
    public TimeManager Timer;
    public CameraShake shake;
    public GameObject Player;
    public LineRenderer line;
    public GameObject particlepoint;
    public ParticleSystem chargin,shootin;
    public AudioSource lasercharge;
	// Use this for initialization
	void Start () {
        Timer = FindObjectOfType<TimeManager>();
        charger = ChargeTime;
        lasertimer = laserTime;
        shake = FindObjectOfType<CameraShake>();
        delay = laserDelay;
        chargedly = chargeDelay;
    }
	
	// Update is called once per frame
	void Update ()
    {
	
        if(charge)
        {
            chargedly -= Timer.DT;
            if (chargedly <= 0)
            {
                if (chargin.isPlaying == false && fire == false)
                {
                    lasercharge.Play();
                    chargin.Play();
                    chargin.GetComponent<ParticleSeek1>().enabled = true;
                }

                charger -= Timer.DT;
                if (charger <= 0 && fire == false)
                {
                    lasercharge.Stop();
                    fire = true;
                    chargin.Stop();
                    chargin.GetComponent<ParticleSeek1>().enabled = false;
                    Timer.startSlowMotion(Timer.TestProperties);
                    shake.StartShake(shake.superlaserProperties);
                }

                if (fire == true)
                {
                    if (shootin.isPlaying == false)
                    {
                        shootin.Play();
                    }
                    lasertimer -= Timer.DT;
                    if (lasertimer > 0)
                    {
                        RaycastHit hit;
                        delay -= Timer.DT;

                        line.gameObject.SetActive(true);
                        if (Physics.Linecast(transform.position, Player.transform.position + new Vector3(0, .7f, 0), out hit))
                        {
                            if (hit.collider.CompareTag("Player"))
                            {
                                Vector3[] pos = { transform.position, Player.transform.position + new Vector3(0, .7f, 0) };
                                line.SetPositions(pos);

                                if (delay <= 0)
                                {
                                    particlepoint.SetActive(true);
                                    particlepoint.transform.position = Player.transform.position + new Vector3(0, .5f, 0);
                                    particlepoint.GetComponent<ParticleSystem>().Play();
                                    Player.GetComponent<IDamageable>().TakeDamage(Damage);

                                }
                            }
                            else
                            {


                                Vector3[] pos = { transform.position, hit.point };
                                line.SetPositions(pos);

                                if (delay <= 0)
                                {
                                    particlepoint.SetActive(true);
                                    particlepoint.GetComponent<ParticleSystem>().Play();
                                    particlepoint.transform.position = hit.point;
                                    particlepoint.transform.rotation = new Quaternion(particlepoint.transform.rotation.x, hit.collider.transform.rotation.y, particlepoint.transform.rotation.z, particlepoint.transform.rotation.w);
                                }
                            }
                        }

                    }
                    else
                    {

                        shootin.Stop();
                        particlepoint.SetActive(false);
                        fire = false;
                        charge = false;
                        charger = ChargeTime;
                        delay = laserDelay;
                        lasertimer = laserTime;

                        chargedly = chargeDelay;
                    }

                    line.gameObject.SetActive(true);
                }
                else
                {
                    RaycastHit hit;
                    if (!Physics.Linecast(transform.position, Player.transform.position + new Vector3(0, .7f, 0), out hit))
                    {
                        Vector3[] pos = { transform.position, Player.transform.position + new Vector3(0, .7f, 0) };
                        line.SetPositions(pos);
                    }
                    else
                    {
                        Vector3[] pos = { transform.position, hit.point };
                        line.SetPositions(pos);

                    }



                }
                transform.LookAt(Player.transform.position);
                line.gameObject.SetActive(true);
            }
        }
        else
        {

            particlepoint.SetActive(false);
            line.gameObject.SetActive(false);
        }
        

	}
}
