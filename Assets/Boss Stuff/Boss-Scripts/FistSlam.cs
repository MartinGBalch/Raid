using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FistSlam : MonoBehaviour
{
    public GameObject Target;
    public GameObject DMGCollider;
    public float ATKSpeed;
    private float StartATKSpeed;
    

    public void RunMechanic()
    {
        

        DMGCollider.transform.position = Target.transform.position;
        DMGCollider.transform.rotation = Target.transform.rotation;
        Instantiate(DMGCollider);


    }

    // Use this for initialization
    void Start ()
    {
        StartATKSpeed = ATKSpeed;	
	}
	
	// Update is called once per frame
	//void Update ()
 //   {
 //       ATKSpeed -= Time.deltaTime;
 //       if(ATKSpeed <= 0)
 //       {
 //           ATKSpeed = StartATKSpeed;
           
 //           DMGCollider.transform.position = Player.transform.position;
 //           Instantiate(DMGCollider);
 //       }
	//}
}
