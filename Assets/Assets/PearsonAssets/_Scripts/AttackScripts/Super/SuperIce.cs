using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SuperIce : MonoBehaviour {

    public bool seek;
    public GameObject target;
    public float growSpeed;
    float DT;
    public float turnspeed;
    public float seekSpeed;
    public float DamageAmount;
    public ParticleSystem poof;
    public float launchDelay;
    public AudioSource spawn, shoot;
    public AudioClip[] Spawn;
    
	// Use this for initialization
	void Start () {
		
	}
    private void Awake()
    {
        spawn.PlayOneShot(Spawn[Random.Range(0, Spawn.Length)]);
    }
    bool once;



    public GameObject ClosetTargetView()
    {
        GameObject[] targets = GameObject.FindGameObjectsWithTag("Enemy");


      
        if (targets == null)
        {
            return null;
        }

        GameObject bestTarget = null;
        float closestDistanceSqr = Mathf.Infinity;
        Vector3 currentPosition = transform.position;
        foreach (GameObject potentialTarget in targets)
        {
          
                
                    Vector3 directionToTarget = potentialTarget.transform.position - currentPosition;
                    float dSqrToTarget = directionToTarget.sqrMagnitude;
                    if (dSqrToTarget < closestDistanceSqr)
                    {
                        closestDistanceSqr = dSqrToTarget;
                        bestTarget = potentialTarget;
                    }
                
                
            
        }
        

        if (bestTarget == null)
        {

            return null;


        }

        if(Vector3.Distance(transform.position,bestTarget.transform.position) > 30)
        {

            targets = GameObject.FindGameObjectsWithTag("Pylon");

            if (targets == null)
            {
                return null;
            }
            foreach (GameObject potentialTarget in targets)
            {

                if (potentialTarget.GetComponent<BossPartsHealth>().Alive)
                {

                    Vector3 directionToTarget = potentialTarget.transform.position - currentPosition;
                    float dSqrToTarget = directionToTarget.sqrMagnitude;
                    if (dSqrToTarget < closestDistanceSqr)
                    {
                        closestDistanceSqr = dSqrToTarget;
                        bestTarget = potentialTarget;
                    }
                }


            }
          

        }
        if (bestTarget == null)
        {

            return null;


        }
        return bestTarget;

    }
    // Update is called once per frame
    void Update ()
    {
        DT = Time.deltaTime;

        if (transform.localScale.y < 0.44f)
        {


            transform.localScale += new Vector3(DT * growSpeed, DT * growSpeed, DT * growSpeed);

            transform.localScale = new Vector3(Mathf.Clamp(transform.localScale.x, 0, 0.06044298f), Mathf.Clamp(transform.localScale.y, 0, 0.4509568f), Mathf.Clamp(transform.localScale.z, 0, 0.0810076f));
        }

        if(transform.localScale.y >= 0.44f && seek)
        {
            launchDelay -= DT;
            if (launchDelay <= 0)
            {
                if (shoot.isPlaying == false && once == false)
                {
                    once = true;
                    shoot.Play();
                }
                if (target != null)
                {
                    transform.up = (target.transform.position - transform.position);
                    transform.parent = null;
                    transform.position = Vector3.MoveTowards(transform.position, target.transform.position, DT * seekSpeed);
                }
                else
                {
                    if(ClosetTargetView() != null)
                    {
                        target = ClosetTargetView();
                    }
                    else
                    {
                        GetComponent<Rigidbody>().AddForce(transform.forward * seekSpeed);
                    }
                }
            }
        }
    }

    private void OnTriggerEnter(Collider other)
    {

        if (other.GetComponent<IDamageable>() != null && other.tag != "Player")
        {


            var IsDamageable = other.GetComponent<IDamageable>();
            IsDamageable.TakeDamage(DamageAmount);

            seek = false;
            GetComponent<BoxCollider>().enabled = false;
            GetComponent<MeshRenderer>().enabled = false;
            poof.Play();
            Destroy(gameObject, 2);
        }
    }
}
