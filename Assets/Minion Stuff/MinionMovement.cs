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
	// Use this for initialization
	void Start ()
    {
        player = GameObject.FindGameObjectWithTag("Player");
        agent = GetComponent<NavMeshAgent>();
        StartSpeed = atkSpeed;
        StartStun = StunTimer;
        atkRange += agent.stoppingDistance;
	}
	
	// Update is called once per frame
	void Update ()
    {
        agent.destination = player.transform.position;
        atkSpeed -= Time.deltaTime;
        
        Dist = Vector3.Distance(transform.position, agent.destination);
        if (Dist <= atkRange)
        {
            if (atkSpeed <= 0 && IsStunned == false)
            {
                Debug.Log("Attack, collider on");
                DmgCollider.GetComponent<BoxCollider>().enabled = true;
                atkSpeed = StartSpeed;
            }

        }

        if (IsStunned == true)
        {
            
            agent.isStopped = true;
            
            StunTimer -= Time.deltaTime;
            if (StunTimer <= 0)
            {
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
