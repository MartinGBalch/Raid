using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MinionSwordController : MonoBehaviour {
    private float DT;
    private float DamageTimer;

    enum States
    {
        MoveState,
        AttackState,
        DieState,
    }

    States CurrentsState;

    [System.Serializable]
    public class SwordPassedIn
    {
        public GameObject Minion;
        public Transform Goal;
        public Transform AttackGoal;
        public TimeManager DeltaTime;
        public Rotator ROT;
        public GameObject HitBox;
        public ParticleSystem Slash;
    }

    [System.Serializable]
    public class SwordMoveValues
    {
        public float MoveSpeed;
        public float DamageTimer;
        public float RotSpeed;
    }
    [System.Serializable]
    public class MinionCheckValues
    {
        public bool Attacking;
        public bool Idle;
        public bool Die;
        public bool up;
    }
    [System.Serializable]
    public class SwordAttackValues
    {
        public float MoveSpeed;
        public float RotatorSpeed;
        public float RotSpeed;
    }

    public SwordPassedIn Objects;
    public SwordMoveValues MV;
    public SwordAttackValues AV;
    public MinionCheckValues BoolValues;

    public void DoMove()
    {
        transform.position = Vector3.Lerp(transform.position, Objects.Goal.position, MV.MoveSpeed * DT);
        transform.rotation = Quaternion.Slerp(transform.rotation, Objects.Goal.rotation,DT * MV.RotSpeed);
        Objects.ROT.Rotate = false;
       
    }
    public void DoAttack()
    {
        DamageTimer -= DT;
        if (BoolValues.up)
        {
            DamageTimer = MV.DamageTimer;
            transform.position = Vector3.MoveTowards(transform.position, Objects.Goal.position, MV.MoveSpeed * DT);
            transform.rotation = Quaternion.Slerp(transform.rotation, Objects.Goal.rotation, DT * MV.RotSpeed);
            Objects.ROT.Rotate = false;
            Objects.HitBox.SetActive(false);
          
        }
        else
        {
            if (DamageTimer <= 0 && DamageTimer > -.3f)
            {
                Objects.HitBox.SetActive(false);
            }
            else if (DamageTimer <= -.3f)
            {
                DamageTimer = MV.DamageTimer;
            }

            if (DamageTimer > 0)
            {
                Objects.HitBox.SetActive(true);
            }
           
            transform.position = Objects.AttackGoal.position;
            transform.rotation = Objects.AttackGoal.rotation;
            Objects.ROT.Rotate = true;
        }
    }
    public void DoDIe()
    {
        Objects.ROT.Rotate = false;
    }

    void CheckState()
    {
        if (BoolValues.Idle == true)
        {
            CurrentsState = States.MoveState;
        }
        if (BoolValues.Attacking == true)
        {

            CurrentsState = States.AttackState;
        }
        if (BoolValues.Die == true)
        {

            CurrentsState = States.DieState;
        }


    }

    // Use this for initialization
    void Start () {
        CurrentsState = States.MoveState;

        Objects.DeltaTime = FindObjectOfType<TimeManager>();
        Objects.ROT.RotSpeed = AV.RotSpeed;
    }
	
	// Update is called once per frame
	void Update ()
    {
        DT = Objects.DeltaTime.DT;
        CheckState();
        switch (CurrentsState)
        {
            case States.MoveState:
                DoMove();
                break;
            case States.AttackState:
                DoAttack();
                break;
            case States.DieState:
                DoDIe();
                break;

        }
        

    }
}
