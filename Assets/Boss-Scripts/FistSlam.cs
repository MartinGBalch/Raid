using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FistSlam : MonoBehaviour
{
    public GameObject Player;
    public GameObject DMGCollider;
    public float ATKSpeed;
    private float StartATKSpeed;

	// Use this for initialization
	void Start ()
    {
        StartATKSpeed = ATKSpeed;	
	}
	
	// Update is called once per frame
	void Update ()
    {
        ATKSpeed -= Time.deltaTime;
        if(ATKSpeed <= 0)
        {
            ATKSpeed = StartATKSpeed;
           
            DMGCollider.transform.position = Player.transform.position;
            Instantiate(DMGCollider);
        }
	}
}
