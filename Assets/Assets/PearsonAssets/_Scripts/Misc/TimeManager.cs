using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TimeManager : MonoBehaviour
{
    public TimeProperties TestProperties,StopProperties;
    public float DT;
    public float ScaleTime;
    private float MinClamp;
    private float MaxClamp;
    private float speed = 1;

    IEnumerator CurrentSlowMotionCoroutine, CurrentStopTimeCoroutine;

    // Use this for initialization
    void Start()
    {

    }

    void Update()
    {

        ScaleTime = Time.timeScale;
        DT = Time.deltaTime;

        if(Input.GetKeyDown(KeyCode.Y))
        {
            startSlowMotion(TestProperties);
        }
    }


    public void startSlowMotion(TimeProperties properties)
    {
        if(CurrentSlowMotionCoroutine != null)
        {
            StopCoroutine(CurrentSlowMotionCoroutine);
        }

        CurrentSlowMotionCoroutine = SlowMotion(properties);
        StartCoroutine(SlowMotion(properties));
    }

    public void startStopTime(TimeProperties properties)
    {
        if (CurrentStopTimeCoroutine != null)
        {
            StopCoroutine(CurrentStopTimeCoroutine);
        }

        CurrentStopTimeCoroutine = StopTime(properties);
        StartCoroutine(StopTime(properties));
    }
    public IEnumerator SlowMotion(TimeProperties properties)
    {
        Time.timeScale = properties.StartTime;

        speed = properties.speed;
        MinClamp = properties.MinClamp;
        MaxClamp = properties.MaxClamp;

        do
        {

            Time.timeScale += 0.2f * speed;
            Time.timeScale = Mathf.Clamp(Time.timeScale, MinClamp, MaxClamp);

            yield return new WaitForSecondsRealtime(0.2f);
        } while (Time.timeScale < MaxClamp);
       
    }

    public IEnumerator StopTime(TimeProperties properties)
    {
        
        float temp = properties.StartTime;
        bool returnNow = false;
        do
        {
            temp -= .1f;
            if (temp <=0)
            {
                Time.timeScale = 1;
               
            }
            else
            {

                Time.timeScale = 0;
            }
            returnNow = true;
            yield return new WaitForSecondsRealtime(0.2f);
        } while (!returnNow);

    }



    [System.Serializable]
    public class TimeProperties
    {
        public float MinClamp;
        public float MaxClamp;

        public float StartTime;

        public float speed;

        //public float duration;
        //[Range(0, 1)]
        //public float noisePercent;
        //[Range(0, 1)]
        //public float dampingPercent;
        //[Range(0, 1)]
        //public float RotationPercent;

    }
}
