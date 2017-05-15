using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BossTurning : MonoBehaviour
{
    public float Speed;
    Rigidbody rb;
    public GameObject Player;
    public GameObject Boss;
    public bool IsTurning = false;
    public float AdjustTimer;
    private float AdjustStart;
    public bool Direction = false; // Right - false : Left - true
    public float AngleBtwn;

    // Use this for initialization

   
    

    void Start ()
    {
        rb = Boss.GetComponent<Rigidbody>();
        AdjustStart = AdjustTimer;
	}
	void OnTriggerEnter(Collider other)
    {
        if(other.tag == "Player")
        {
            AdjustTimer = AdjustStart;
            IsTurning = false;
        }
        



    }
	// Update is called once per frame
	void Update ()
    {


         //AngleBtwn = Vector3.Angle(transform.forward, Player.transform.position);
        //print(AngleBtwn);
        Vector3 forward = Boss.transform.TransformDirection(Vector3.forward);
        Vector3 toOther = Player.transform.position - Boss.transform.position;
        if (Vector3.Dot(forward, toOther) < 0)
        {
            
            IsTurning = true;
            
        }
       
       
            Vector3 Right = Boss.transform.TransformDirection(Vector3.right);
            Vector3 toOtherRight = Player.transform.position - Boss.transform.position;
            if (Vector3.Dot(Right, toOther) < 0)
            {
                Direction = false;
            }
            else
            {
                Direction = true;
            }

            
                
        if (IsTurning == true)
        {
            AdjustTimer -= Time.deltaTime;
            if(AdjustTimer <= 0)
            {
                if (Direction) { Boss.transform.Rotate(0, Speed, 0); }
                if (!Direction) { Boss.transform.Rotate(0, -Speed, 0); }
            }
           
           
            
        }
        








    }
}
