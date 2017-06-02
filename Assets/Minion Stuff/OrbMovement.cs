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
    public int BulletCount;
    private int StartBulletCount;
    Quaternion rotationCache;
    private float ArcDegree;
    public float AtkSpeedDelay;
    private float DelayStart;
    public int BurstCount;
    private int StartCount;
    // Use this for initialization
    void Start ()
    {
        DeltaTime = FindObjectOfType<TimeManager>();
        Player = GameObject.FindGameObjectWithTag("Player");
        agent = GetComponent<NavMeshAgent>();
        FollowDistance = AttackRange - 8;
        StartSpeed = AttackSpeed;
        DelayStart = AtkSpeedDelay;
        ArcDegree = 45 / BulletCount;
        StartBulletCount = BulletCount;
        StartCount = BurstCount;
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
            
                AttackSpeed -= DT;
            if (AttackSpeed <= 0 && BurstCount > 0)
                {
                BurstCount--;
                rotationCache = transform.rotation;
                    transform.Rotate(0, 30, 0);
                    for (int i = 0; i < BulletCount; i++)
                    {
                        transform.Rotate(new Vector3(0, -15, 0));
                        var projectile = (GameObject)Instantiate(Bullet, transform.position, transform.rotation);
                        projectile.GetComponent<Rigidbody>().velocity = (projectile.transform.forward) * BulletSpeed;
                       
                        Destroy(projectile, BulletLifetime);
                    }
                    AttackSpeed = StartSpeed;
                    transform.rotation = rotationCache;
                }
                else { transform.LookAt(agent.destination /*+ agent.velocity + new Vector3(0, 2, 0)*/); }
               
            }
        AtkSpeedDelay -= DT;
        if(AtkSpeedDelay <= 0)
        {
            BurstCount = StartCount;
            AtkSpeedDelay = DelayStart;
        }
    }
 

    }

