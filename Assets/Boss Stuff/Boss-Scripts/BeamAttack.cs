using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BeamAttack : MonoBehaviour {

    //public Transform sunrise;
    //public Transform sunset;
    //private Vector3 Look;
    //public float journeyTime = 1.0F;
    //private float startTime;
    //Rigidbody rb;

    public GameObject LazerHead;
    public GameObject Player;
<<<<<<< HEAD
    void Start()
    {
      
    }
=======

    void Start()
    {

    }
    //void Start()
    //{
    //    rb = GetComponent<Rigidbody>();
    //    startTime = Time.time;
    //}
>>>>>>> 7958c4708b97ee94427acd8632546b39f99ee9c9
    //void Update()
    //{
    //    Vector3 center = (sunrise.position + sunset.position) * 0.5F;
    //    center -= new Vector3(0, 0, -1);
    //    Vector3 riseRelCenter = sunrise.position - center;
    //    Vector3 setRelCenter = sunset.position - center;
    //    float fracComplete = (Time.time - startTime) / journeyTime;
    //    Look = Vector3.Slerp(riseRelCenter, setRelCenter, fracComplete);
    //    //transform.position = Vector3.Slerp(riseRelCenter, setRelCenter, fracComplete);
    //    Look += center;
    //    transform.LookAt(Look);

    //}


    public void RunMechanic()
    {
       // Debug.Log("Running Lazer Mechanic");
        RaycastHit hit;
        if (Physics.Linecast(transform.position, Player.transform.position, out hit, 9 << 9))
        {
           
            if (hit.collider.tag == "Pillar")
            {
                Destroy(hit.collider.gameObject);
                //Debug.Log("Destroyed Pillar");
            }

        }
        else
        {
            Player.GetComponent<PlayerHealth>().TakeDamage(1000);
           // Debug.Log("You Died.");
        }

    }



}
