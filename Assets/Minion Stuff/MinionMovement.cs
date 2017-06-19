using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
public class MinionMovement : MonoBehaviour {

    NavMeshAgent agent;
    private GameObject player;
    public GameObject DmgCollider;
    public float atkSpeed;
    private float StartSpeed;
    
    public float atkRange;
    public float Dist;

    public bool IsStunned = false;

    public float StunTimer;
    private float StartStun;
    public float ResetDist;
    Rigidbody rb;
	// Use this for initialization
	void Start ()
    {
        player = ThirdPersonPlayerController.FindPlayerGameObject().gameObject;
        agent = GetComponent<NavMeshAgent>();
        StartSpeed = atkSpeed;
        StartStun = StunTimer;
        atkRange += agent.stoppingDistance;
        rb = GetComponent<Rigidbody>();
	}
	
	// Update is called once per frame
	void Update ()
    {
        agent.destination = player.transform.position;
        
        
        Dist = Vector3.Distance(transform.position, agent.destination);
        if (Dist <= atkRange && IsStunned == false)
        {
            atkSpeed -= Time.deltaTime;
            if (atkSpeed <= 0 )
            {
                Debug.Log("Attack, collider on");
                DmgCollider.GetComponent<MeshRenderer>().enabled = true;
                DmgCollider.GetComponent<BoxCollider>().enabled = true;
                atkSpeed = StartSpeed;
            }

        }

        if (Dist >= ResetDist && atkSpeed != StartSpeed) { atkSpeed = StartSpeed; }

        if (IsStunned == true)
        {
            
            agent.isStopped = true;
            //agent.velocity = new Vector3(0, 0, 0);
            rb.velocity = new Vector3(0, 0, 0);
            StunTimer -= Time.deltaTime;
            if (StunTimer <= 0)
            {
                //if (atkSpeed <= 0) { atkSpeed = 0; }
                //atkSpeed += 1;
                StunTimer = StartStun;
                agent.isStopped = false;
                IsStunned = false;
            }

        }

       


        //if (atkSpeed <= -1)
        //{
        //    Debug.Log("Collider off");

        //    DmgCollider.GetComponent<BoxCollider>().enabled = false;
        //}

    }
}
