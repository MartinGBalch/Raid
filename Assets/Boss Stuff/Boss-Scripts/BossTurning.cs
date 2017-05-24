using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BossTurning : MonoBehaviour
{
    public float Speed;
    Rigidbody rb;
    public GameObject Player;
    //public GameObject Boss;
    public bool IsTurning = false;
    public float AdjustTimer;
    private float AdjustStart;
    public bool Direction = false; // Right - false : Left - true
    public float AngleBtwn;

    // Use this for initialization

   
    

    void Start ()
    {
        rb = GetComponent<Rigidbody>();
        AdjustStart = AdjustTimer;
	}


    public bool FOVCheck(float FOV)
    {
        Vector3 Dir = (Player.transform.position - transform.position).normalized;
        float Rad = FOV * Mathf.Deg2Rad;
        var DotVar = Vector3.Dot(transform.forward, Dir);
        var CosVar = Mathf.Cos(Rad / 2);

        
        return (DotVar > CosVar);
    }


	// Update is called once per frame
	void Update ()
    {

        

        
        Vector3 forward = transform.TransformDirection(Vector3.forward);
        Vector3 toOther = Player.transform.position - transform.position;
        if (Vector3.Dot(forward, toOther) < 0)
        {
            
            IsTurning = true;
            
        }
       
       
            Vector3 Right = transform.TransformDirection(Vector3.right);
            Vector3 toOtherRight = Player.transform.position - transform.position;
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
                if (Direction) { transform.Rotate(0, Speed, 0);  }
                if (!Direction) { transform.Rotate(0, -Speed, 0);  }

                if (FOVCheck(15)) { IsTurning = false; AdjustTimer = AdjustStart; }
            }
           
           
            
        }
        








    }
}
