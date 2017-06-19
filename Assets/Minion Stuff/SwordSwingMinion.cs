using System.Collections;
using System.Collections.Generic;
using UnityEngine.AI;
using UnityEngine;
public class SwordSwingMinion : MonoBehaviour {
    private NavMeshAgent Agent;
    private Rigidbody RB;
    private float DT;
    private GameObject Target;
    private GameObject Boss;
    private float AttackDuration;
    private float AttackCooldown;

    [System.Serializable]
    public class MinionMoveProperties
    {
        public float strength;
        public float maxSpeed;
        public float minSpeed;
        public bool Damaged;
        public float jiggletime;


        public float HoverSpeed;
        public float OffsetHover;
        public float speed;
        public float Attackduration;
        public float AttackCooldown;
    }

    [System.Serializable]
    public class MinionPassedInObjects
    {
        public TimeManager DeltaTime;
        public GameObject PlayerPos, Back;
        public ThirdPersonPlayerController Player;
        public MinionSwordController Sword;

        [System.Serializable]
        public class FloatParticles
        {
            public ParticleSystem Float;
        }
        [System.Serializable]
        public class MinionSounds
        {
            public AudioSource AttackSound;
        }

        public MinionSounds Sounds;
    }
    [System.Serializable]
    public class MinionAttackValues
    {

        public float Attackduration;
        public float AttackCooldown;
        public float AttackUpSpeed, AttackDownSpeed, AttackBackSpeed, AttackSpeed;
      
       }
    public MinionMoveProperties MP;
    public MinionPassedInObjects Objects;
    public MinionAttackValues AV;

    enum States
    {
        IdleState,
        TrackState,
        AttackState,
        DeathState,


    }
    States CurrentState;
	// Use this for initialization
	void Start () {
        CurrentState = States.IdleState;
        Boss = GameObject.FindGameObjectWithTag("Boss");
        RB = GetComponent<Rigidbody>();
        Agent = GetComponent<NavMeshAgent>();
        AttackCooldown = MP.AttackCooldown;
        AttackDuration = -1;
        Objects.DeltaTime = TimeManager.FindTimeManager();

        Objects.Player = FindObjectOfType<ThirdPersonPlayerController>();
        Objects.PlayerPos = ThirdPersonPlayerController.FindPlayerGameObject().gameObject;

        Objects.Sword.BoolValues.Idle = true;
        Objects.Sword.BoolValues.Attacking = false;
        Objects.Sword.BoolValues.Die = false;
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
    bool up, Down, AttackUp, Out;
    public bool In = true;
    public float JiggleTime;
    public void DamageJiggle()
    {
        
        if (MP.Damaged)
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
                MP.Damaged = false;
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

    public void Hover()
    {
      
        if(MP.OffsetHover <= 1.01f)
        {
            up = true;
        }

        else if (MP.OffsetHover >= 1.49)
        {
            up = false;
          
        }

        if(up)
        {
              MP.OffsetHover += DT * MP.HoverSpeed;
        }
        else
        {

            MP.OffsetHover -= DT * MP.HoverSpeed;
        }

        Agent.baseOffset = MP.OffsetHover;

        MP.OffsetHover = Mathf.Clamp(MP.OffsetHover, .5f, 2.5f);
    }

    public void DoIdle()
    {
        
        if (Target != null)
        {
            if (Vector3.Distance(Target.transform.position, transform.position) > 5)
            {
                Agent.destination = Target.transform.position;
                Agent.isStopped = false;
            }
            else
            {
                Agent.isStopped = true;
            }
        }
        else
        {
            Target = ClosetTargetView();
            if (Target == null)
            {
                Target = Boss;
            }
        }

        if(Vector3.Distance(Objects.PlayerPos.transform.position,transform.position) < 30)
        {

            Objects.Sword.BoolValues.Idle = true;
            Objects.Sword.BoolValues.Attacking = false;
            Objects.Sword.BoolValues.Die = false;

            Agent.isStopped = false;
            CurrentState = States.TrackState;
        }
        Agent.acceleration = MP.maxSpeed + 3;
        Agent.speed = MP.minSpeed;
    }
    public void DoTrack()
    {
        Agent.destination = Objects.PlayerPos.transform.position;

        if (Vector3.Distance(Objects.PlayerPos.transform.position, transform.position) > 35)
        {
            Objects.Sounds.AttackSound.Stop();
            CurrentState = States.IdleState;
            Objects.Sword.BoolValues.Idle = true;
            Objects.Sword.BoolValues.Attacking = false;
            Objects.Sword.BoolValues.Die = false;
        }

        if (Vector3.Distance(Objects.PlayerPos.transform.position, transform.position) < 4)
        {
            CurrentState = States.AttackState;
            Objects.Sword.BoolValues.Idle = false;
            Objects.Sword.BoolValues.Attacking = true;
            Objects.Sword.BoolValues.Die = false;
            AttackUp = true;
        }
        Agent.acceleration = MP.maxSpeed + 3;
        Agent.speed = MP.minSpeed;
    }
    public void DoAttack()
    {
        AttackDuration -= DT;
        AttackCooldown -= DT;
        if (Vector3.Distance(Objects.PlayerPos.transform.position, transform.position) < 10)
        {
            if (AttackCooldown < 0)
            {

                Agent.isStopped = false;
                if (Agent.baseOffset >= 2.49)
                {
                    AttackUp = false;
                }

                if (AttackUp)
                {
                    Agent.SetDestination(Objects.PlayerPos.transform.position);
                    Agent.velocity = -transform.forward * AV.AttackBackSpeed;
                    Agent.baseOffset += DT * AV.AttackUpSpeed;
                    AttackDuration = AV.Attackduration;
                    Objects.Sword.BoolValues.up = true;

                }
                else 
                {

                    if (Objects.Sounds.AttackSound.isPlaying == false)
                    {
                        Objects.Sounds.AttackSound.Play();
                    }
                    Objects.Sword.BoolValues.up = false;
                    Agent.SetDestination(Objects.PlayerPos.transform.position);
                    Agent.baseOffset -= DT * AV.AttackDownSpeed;
                    Agent.acceleration = AV.AttackSpeed + 3;
                    Agent.speed = AV.AttackSpeed;

                    if (Vector3.Distance(Objects.PlayerPos.transform.position, transform.position) <= 2)
                    {
                        Agent.isStopped = true;
                    }
                    else
                    {
                        Agent.SetDestination(Objects.PlayerPos.transform.position);
                    }
                }

                if (AttackDuration < 0)
                {
                    AttackUp = true;

                    Objects.Sword.BoolValues.up = true;
                    AttackCooldown = AV.AttackCooldown;
                    MP.OffsetHover = Agent.baseOffset;


                }

                
                Agent.baseOffset = Mathf.Clamp(Agent.baseOffset, .5f, 2.5f);
            }
            else
            {

                Objects.Sounds.AttackSound.Stop();
                AttackUp = true;
                AttackDuration = AV.Attackduration;
                Hover();
                if (Vector3.Distance(Objects.PlayerPos.transform.position, transform.position) <= 3)
                {
                    Agent.isStopped = true;
                }
                else
                {

                    Agent.isStopped = false;
                    Agent.acceleration = MP.maxSpeed + 3;
                    Agent.speed = MP.minSpeed;
                    Agent.SetDestination(Objects.PlayerPos.transform.position);
                }
            }
        }
        else
        {

            Objects.Sounds.AttackSound.Stop();
            CurrentState = States.TrackState;
            Objects.Sword.BoolValues.Idle = true;
            Objects.Sword.BoolValues.Attacking = false;
            Objects.Sword.BoolValues.Die = false;

            Objects.Sword.BoolValues.up = true;
        }
    }
    public void DoDie()
    {

    }


    // Update is called once per frame
    void Update ()
    {
        DT = Objects.DeltaTime.DT;
        if (Objects.Player != null)
        {
            switch (CurrentState)
            {
                case States.IdleState:
                    DoIdle();
                    break;
                case States.TrackState:
                    DoTrack();
                    break;
                case States.AttackState:
                    DoAttack();
                    break;
                case States.DeathState:
                    DoDie();
                    break;


            }

            if (CurrentState != States.DeathState && CurrentState != States.AttackState)
            {
                Hover();
            }
            if (CurrentState != States.DeathState)
            {
                DamageJiggle();
            }

        }
        else
        {
            Agent.baseOffset -= DT;
        }

    }
}
