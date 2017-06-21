using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Video;
using UnityEngine.SceneManagement;
using UnityEngine.UI;
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
    public VideoPlayer credits;
    float DT;
	// Use this for initialization
	void Start () {
        CurrentGoToPoint = Points[0];
        CurrentToPoint = Points[0].Positions;
        CurrentRotSpeed = Points[0].RotToSpeed;
        CurrentMoveSpeed = Points[0].MoveToSpeed;
	}
    int T;
    bool startcredits;
    public Fade fader;
    // Update is called once per frame
    void Update()
    {
        DT = Time.deltaTime;
        transform.rotation = Quaternion.RotateTowards(transform.rotation, CurrentToPoint.transform.rotation, DT * CurrentRotSpeed);
        transform.position = Vector3.MoveTowards(transform.position, CurrentToPoint.transform.position, DT * CurrentMoveSpeed);


        if (Vector3.Distance(CurrentGoToPoint.Positions.position, transform.position) < CurrentGoToPoint.MinDistance)
        {
            CurrentRotSpeed = CurrentGoToPoint.ThereRotSpeed;
            CurrentMoveSpeed = CurrentGoToPoint.ThereSpeed;

            if (Vector3.Distance(CurrentGoToPoint.Positions.position, transform.position) < .01f)
            {
                T++;
                if (T < Points.Length)
                {
                    CurrentGoToPoint = Points[T];
                    CurrentToPoint = CurrentGoToPoint.Positions;

                    CurrentMoveSpeed = CurrentGoToPoint.MoveToSpeed;
                    CurrentRotSpeed = CurrentGoToPoint.RotToSpeed;
                }
            }

        }

        if (Vector3.Distance(CurrentGoToPoint.Positions.position, transform.position) < CurrentGoToPoint.MinDistance && T == Points.Length - 1)
        {
            fader.Out = true;
        }
        if (credits.isPlaying == false && startcredits == true)
        {

            SceneManager.LoadScene("Menu");

        }

        if (fader.fadedout && credits.isPlaying == false && startcredits == false)
        {
            startcredits = true;
            credits.Play();
            fader.credits = true;
            fader.GetComponent<Image>().enabled = false;
            fader.In = true;
        }

     
    }
}
