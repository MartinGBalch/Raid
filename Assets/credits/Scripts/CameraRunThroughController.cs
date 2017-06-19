using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraRunThroughController : MonoBehaviour {

    [System.Serializable]
    public class GoToPoints
    {
        public Transform Positions;
        public float MoveToSpeed, ThereSpeed, RotToSpeed, ThereRotSpeed;
        public bool MoveToNextOne;
        public float MinDistance;
        public float LeaveDistance;
    }
    public Transform CurrentToPoint;
    public float CurrentRotSpeed;
    public float CurrentMoveSpeed;
    public bool moving;
    public GoToPoints[] Points;
    private GoToPoints CurrentGoToPoint;

    float DT;
	// Use this for initialization
	void Start () {
        CurrentGoToPoint = Points[0];
        CurrentToPoint = Points[0].Positions;
        CurrentRotSpeed = Points[0].RotToSpeed;
        CurrentMoveSpeed = Points[0].MoveToSpeed;
	}
    int T;
	// Update is called once per frame
	void Update ()
    {
        DT = Time.deltaTime;
        transform.rotation = Quaternion.RotateTowards(transform.rotation, CurrentToPoint.transform.rotation, DT * CurrentRotSpeed);
        transform.position = Vector3.MoveTowards(transform.position, CurrentToPoint.transform.position, DT * CurrentMoveSpeed);


        if(Vector3.Distance(CurrentGoToPoint.Positions.position,transform.position) < CurrentGoToPoint.MinDistance)
        {
            CurrentRotSpeed = CurrentGoToPoint.ThereRotSpeed;
            CurrentMoveSpeed = CurrentGoToPoint.ThereSpeed;

            if(Vector3.Distance(CurrentGoToPoint.Positions.position, transform.position) < .01f)
            {
                T++;

                CurrentGoToPoint = Points[T];
                CurrentToPoint = CurrentGoToPoint.Positions;
                
                CurrentMoveSpeed = CurrentGoToPoint.MoveToSpeed;
                CurrentRotSpeed = CurrentGoToPoint.RotToSpeed;
            }
        }


    }
}
