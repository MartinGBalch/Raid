using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
public class OrbMovement : MonoBehaviour
{
    private TimeManager DeltaTime;
    float DT;
    NavMeshAgent agent;
    private GameObject Player;
    public GameObject Bullet;
    public float Dist;
    public float AttackRange;
    private float FollowDistance;
    public bool IsFiring = false;
    public float AttackSpeed;
    private float StartSpeed;
    public float BulletLifetime;
    public float BulletSpeed;
	// Use this for initialization
	void Start ()
    {
        DeltaTime = FindObjectOfType<TimeManager>();
        Player = GameObject.FindGameObjectWithTag("Player");
        agent = GetComponent<NavMeshAgent>();
        FollowDistance = AttackRange - 8;
        StartSpeed = AttackSpeed;
    }
	
	// Update is called once per frame
	void Update ()
    {
        DT = DeltaTime.DT;
        agent.destination = Player.transform.position;
        Dist = Vector3.Distance(transform.position, agent.destination);

        if(Dist <= FollowDistance)
        {
            agent.isStopped = true;
        }
        else
        {
            agent.isStopped = false;
        }

        if(Dist <= AttackRange)
        {
            IsFiring = true;
        }
        else
        {
            IsFiring = false;
        }

        if(IsFiring == true)
        {
            transform.LookAt(agent.destination);
            AttackSpeed -= DT;
            if(AttackSpeed <= 0)
            {
                var projectile = (GameObject)Instantiate(Bullet, transform.position, transform.rotation);
                projectile.GetComponent<Rigidbody>().velocity = (projectile.transform.forward) * BulletSpeed;
                AttackSpeed = StartSpeed;
                Destroy(projectile, BulletLifetime);
            }
        }


    }
}
