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
        Timer = TimeManager.FindTimeManager();
        charger = ChargeTime;
        lasertimer = laserTime;
        shake = FindObjectOfType<CameraShake>();
        delay = laserDelay;
        chargedly = chargeDelay;
        setspeed = 1;
    }
    public float maxspeed, growspeed;
    float setspeed;
    Vector3 startpos;
	// Update is called once per frame
	void Update ()
    {
        if(Input.GetKeyDown(KeyCode.L))
        {
            charge = true;
        }
	
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
                    setspeed += growspeed;
                    if(setspeed >= maxspeed)
                    {
                        setspeed = maxspeed;
                    }
                    if (shootin.isPlaying == false)
                    {
                        shootin.Play();
                    }
                    lasertimer -= Timer.DT;
                    
                    if (lasertimer > 0)
                    {
                        RaycastHit hit;
                        delay -= Timer.DT;

                        var fwd = transform.forward;

                        var direct = (Player.transform.position - transform.position).normalized ;

                        var lkat = Vector3.Slerp(transform.forward, direct, Time.deltaTime * setspeed);

                        transform.forward = (lkat);//orward = Vector3.Slerp(transform.forward, direct, Time.deltaTime * setspeed);
                        line.gameObject.SetActive(true);
                        if (Physics.Raycast(transform.position, transform.forward, out hit,Mathf.Infinity))
                        {
                            if (!hit.collider.CompareTag("Pylon") && hit.collider.GetComponent<IDamageable>() != null)
                            {
                                if (hit.collider.CompareTag("Player"))
                                {
                                    Vector3[] pos = { transform.position, Player.transform.position + new Vector3(0, .7f, 0) };
                                    line.SetPositions(pos);
                                }
                                else
                                {


                                    Vector3[] pos = { transform.position, hit.point };
                                    line.SetPositions(pos);
                                }
                                if (delay <= 0)
                                {
                                    particlepoint.SetActive(true);
                                    particlepoint.transform.position = Player.transform.position + new Vector3(0, .5f, 0);
                                    particlepoint.GetComponent<ParticleSystem>().Play();
                                    if (hit.collider.CompareTag("Player"))
                                    {
                                        Player.GetComponent<IDamageable>().TakeDamage(Damage);
                                    }
                                    else
                                    {
                                        hit.collider.GetComponent<IDamageable>().TakeDamage(Damage);
                                    }
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
                        setspeed = 1;
                        chargedly = chargeDelay;
                    }

                    line.gameObject.SetActive(true);
                }
                else
                {
                    setspeed = 1;
                    RaycastHit hit;
                    if (!Physics.Raycast(transform.position, transform.forward, out hit, Mathf.Infinity))
                    {
                        Vector3[] pos = { transform.position, Player.transform.position + new Vector3(0, .7f, 0) };
                        line.SetPositions(pos);
                    }
                    else
                    {
                        Vector3[] pos = { transform.position, hit.point };
                        line.SetPositions(pos);

                    }

                    var fwd = transform.forward;

                    var direct = (Player.transform.position - transform.position).normalized;

                    var lkat = Vector3.Slerp(transform.forward, direct, Time.deltaTime * 6);
                    transform.forward = lkat;
                }
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
