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
    public float HoverSpeed;
    public float OffsetHover;
    public bool up, In;
    // Use this for initialization
    void Start()
    {
        DeltaTime = FindObjectOfType<TimeManager>();
        Player = ThirdPersonPlayerController.FindPlayerGameObject().gameObject;
        agent = GetComponent<NavMeshAgent>();
        FollowDistance = AttackRange - 5;
        StartSpeed = AttackSpeed;
        DelayStart = AtkSpeedDelay;
        ArcDegree = 15 / BulletCount;
        StartBulletCount = BulletCount;
        StartCount = BurstCount;
    }
    public void Hover()
    {

        if (OffsetHover <= 1.01f)
        {
            up = true;
        }

        else if (OffsetHover >= 1.49)
        {
            up = false;

        }

        if (up)
        {
            OffsetHover += DT * HoverSpeed;
        }
        else
        {

            OffsetHover -= DT * HoverSpeed;
        }

        agent.baseOffset = OffsetHover;

        OffsetHover = Mathf.Clamp(OffsetHover, .5f, 2.5f);
    }


    public GameObject ClosetTargetView()
    {
        GameObject[] targets = GameObject.FindGameObjectsWithTag("Pylon");
        if (targets == null)
        {
            return null;
        }

        GameObject bestTarget = null;
        float closestDistanceSqr = Mathf.Infinity;
        Vector3 currentPosition = transform.position;
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


        if (bestTarget == null)
        {

            return null;


        }

        return bestTarget;

    }
    public bool Damaged;
    public void DamageJiggle()
    {

        if (Damaged)
        {
            if (In)
            {
                transform.localScale -= new Vector3(DT * 8, DT * 2, DT * 8);
            }
            else
            {

                transform.localScale += new Vector3(DT * 8, DT * 2, DT * 8);
            }

            if (transform.localScale.x > 1)
            {
                Damaged = false;
            }
            else if (transform.localScale.x <= .6f)
            {
                In = false;
            }
            transform.localScale = new Vector3(Mathf.Clamp(transform.localScale.x, .4f, 1.1f), Mathf.Clamp(transform.localScale.y, .4f, 1.1f), Mathf.Clamp(transform.localScale.z, .4f, 1.1f));
        }
        else
        {

            transform.localScale += new Vector3(DT * 5, DT * 5, DT * 5);
            transform.localScale = new Vector3(Mathf.Clamp(transform.localScale.x, .4f, 1f), Mathf.Clamp(transform.localScale.y, .4f, 1f), Mathf.Clamp(transform.localScale.z, .4f, 1));
        }


    }
    // Update is called once per frame
    void Update()
    {


        DT = DeltaTime.DT;
        if (Player != null)
        {
            Hover();
            DamageJiggle();

            if (Vector3.Distance(transform.position, Player.transform.position) < 20)
            {
                agent.destination = Player.transform.position;
                Dist = Vector3.Distance(transform.position, agent.destination);

                if (Dist <= FollowDistance)
                {
                    agent.isStopped = true;
                }
                else
                {
                    agent.isStopped = false;
                }

                if (Dist <= AttackRange)
                {
                    IsFiring = true;
                }
                else
                {
                    IsFiring = false;
                }

                if (IsFiring == true)
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
                if (AtkSpeedDelay <= 0)
                {
                    BurstCount = StartCount;
                    AtkSpeedDelay = DelayStart;
                }
            }
            else
            {
                if (ClosetTargetView() != null)
                {
                    agent.destination = ClosetTargetView().transform.position;
                }
                else
                {
                    agent.destination = Player.transform.position;
                }
            }

        }
        else
        {
            agent.baseOffset -= DT;
        }
    }
}
