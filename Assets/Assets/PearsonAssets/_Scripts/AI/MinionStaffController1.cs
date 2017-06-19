using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MinionStaffController1 : MonoBehaviour {
    private float DT;
    private float DamageTimer;
    public bool die;
    enum States
    {
        MoveState,
        AttackState,
        DieState,
    }

    States CurrentsState;

    [System.Serializable]
    public class StaffPassedIn
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
    public class StaffMoveValues
    {
        public float MoveSpeed;
        public float DamageTimer;
        public float RotSpeed;
    }
    [System.Serializable]
    public class MinionCheckValuesStaff
    {
        public bool Attacking;
        public bool Idle;
        public bool Die;
        public bool up;
    }
    [System.Serializable]
    public class StaffAttackValues
    {
        public float MoveSpeed;
        public float RotatorSpeed;
        public float RotSpeed;
    }

    public StaffPassedIn Objects;
    public StaffMoveValues MV;
    public StaffAttackValues AV;
    public MinionCheckValuesStaff BoolValues;

    public void DoMove()
    {
        transform.position = Vector3.Lerp(transform.position, Objects.Goal.position, MV.MoveSpeed * DT);
        transform.rotation = Quaternion.Slerp(transform.rotation, Objects.Goal.rotation,DT * MV.RotSpeed);
       
       
    }
    public void DoDIe()
    {
    }

    void CheckState()
    {
        if (BoolValues.Idle == true)
        {
            CurrentsState = States.MoveState;
        }
        if (BoolValues.Die == true)
        {

            CurrentsState = States.DieState;
        }


    }

    // Use this for initialization
    void Start () {
        CurrentsState = States.MoveState;

        Objects.DeltaTime = TimeManager.FindTimeManager();
      
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
            case States.DieState:
                DoDIe();
                break;

        }
        

    }
}
