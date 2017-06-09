using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SuperGroundPound : MonoBehaviour {


    float DT;
    public float growSpeed;
    public float maxRadius;
    public float liveTime;
    public float forwardSpeed, upSpeed, forwardSpeedJump, upSpeedJump;
    private ThirdPersonCameraController cam;
    private PlayerHealth HP;
    public Transform trans;
    public GameObject player;
    public bool Shield;
    public bool jumped;
    public float difference;
    public float offsetJump;
    bool up;
    // Use this for initialization
    void Start()
    {
        up = true;
    }


    // Update is called once per frame
    void Update()
    {
        DT = Time.deltaTime;
        liveTime -= DT;
       
            if (liveTime > 0)
            {
                if (jumped)
                {


               if(transform.position.y > 10.99f)
                {
                    up = false;
                }

                if (up)
                    {

                    transform.Translate(transform.forward * (DT * forwardSpeedJump));
                    transform.Translate(transform.up * (DT * upSpeedJump));
                    }

                }
            }
            else
            {
                Shield = false;

            }
        }
    
}
