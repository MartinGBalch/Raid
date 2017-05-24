using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
public class ChargerAI : MonoBehaviour {

    NavMeshAgent agent;
    private GameObject player;
    public bool IsCharging = false;
    public float ChargeDelay;
    private float DelayStart;
    public float ChargeTimer;
    private float ChargeStart;
    public bool HasTarget = false;
    public float distanceTraveled;
    float DT;
    Rigidbody rb;
    Vector3 FirstBase;
    // Use this for initialization
    void Start ()
    {
        player = GameObject.FindGameObjectWithTag("Player");
        agent = GetComponent<NavMeshAgent>();
        rb = GetComponent<Rigidbody>();
        DelayStart = ChargeDelay;
        ChargeStart = ChargeTimer;
    }
	
	// Update is called once per frame
	void Update ()
    {
        DT = Time.deltaTime;
        if (HasTarget == false) { ChargeTimer -= DT; }
        if (ChargeTimer <= 0)
        {
            agent.destination = player.transform.position;
            FirstBase = transform.position; /*agent.destination - ((transform.position - agent.destination).normalized * 10);*/
            agent.isStopped = true;
            HasTarget = true;
            ChargeTimer = ChargeStart;
        }
        if (HasTarget == true)
        {
            ChargeDelay -= DT;
            if (ChargeDelay <= 0)
            {
                agent.isStopped = false;
               
            }

            if (agent.destination != null)
            {

                
               Debug.DrawLine(FirstBase, transform.position);
              
                if (Vector3.Distance(FirstBase, transform.position) >= distanceTraveled)
                {
                    agent.isStopped = true;
                    HasTarget = false;
                    rb.velocity = new Vector3(0, 0, 0);
                }

            }

            


        }



	}
}
