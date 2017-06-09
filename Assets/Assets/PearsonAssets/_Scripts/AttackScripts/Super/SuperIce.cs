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
	// Use this for initialization
	void Start () {
		
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
                if (target != null)
                {
                    transform.up = (target.transform.position - transform.position);
                    transform.parent = null;
                    transform.position = Vector3.MoveTowards(transform.position, target.transform.position, DT * seekSpeed);
                }
                else
                {
                    transform.Translate(transform.forward * seekSpeed / 2);
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
