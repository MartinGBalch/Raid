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
    private float DistanceToGo;
    float DT;
    Rigidbody rb;
    Vector3 FirstBase;
    public float Dmg;
    bool CanDealDamage = false;
    public float DistWent;
    // Use this for initialization

    void OnTriggerEnter(Collider other)
    {
       
        if (other.tag == "Player")
        {
           
            var thingy = other.gameObject.GetComponent<IDamageable>();
            if (thingy != null && CanDealDamage == true)
            {
                thingy.TakeDamage(Dmg);
                CanDealDamage = false;
            }

        }

    }


    void Start ()
    {
        player = ThirdPersonPlayerController.FindPlayerGameObject().gameObject;
        agent = GetComponent<NavMeshAgent>();
        rb = GetComponent<Rigidbody>();
        DelayStart = ChargeDelay;
        ChargeStart = ChargeTimer;
    }
	
	// Update is called once per frame
	void Update ()
    {
        //if (Vector3.Distance(agent.destination, transform.position) <= 1)
        //{
        //    agent.isStopped = true;
        //    HasTarget = false;
        //    rb.velocity = new Vector3(0, 0, 0);
        //    CanDealDamage = false;
        //}
        if(agent.remainingDistance <= 1)
        {
            agent.isStopped = true;
            HasTarget = false;
            rb.velocity = new Vector3(0, 0, 0);
            CanDealDamage = false;
        }

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
            DistanceToGo = Vector3.Distance(transform.position, agent.destination);
            ChargeDelay -= DT;
            if (ChargeDelay <= 0)
            {
                CanDealDamage = true;
                agent.isStopped = false;
                ChargeDelay = DelayStart;
            }

       

            //if (agent.destination != null)
            //{

                
            //   Debug.DrawLine(FirstBase, transform.position);
              
            //    if (Vector3.Distance(FirstBase, transform.position) >= distanceTraveled)
            //    {
            //        agent.isStopped = true;
            //        HasTarget = false;
            //        rb.velocity = new Vector3(0, 0, 0);
            //    }

            //}

            


        }



	}
}
