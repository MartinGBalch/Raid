using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MinionOrbDamage : MonoBehaviour {

    public float Dmg;
    public float speed = 1;
    Rigidbody rb;
    Vector3 velocity;
    public GameObject target;
    void Start()
    {
       // target = Player = ThirdPersonPlayerController.FindPlayerGameObject().gameObject;
        rb = GetComponent<Rigidbody>();
    }
    private void Awake()
    {
        
    }
    void Update()
    {
        Vector3 dir = ((target.transform.position + new Vector3(0,1,0)) - transform.position).normalized;
        Vector3 desiredVelocity = dir * speed;


        Vector3 steeringForce = desiredVelocity - rb.velocity;
        rb.AddForce(steeringForce *= .85f);
        transform.LookAt(target.transform.position);
    }

    void OnTriggerEnter(Collider collider)
    {
        if (collider.tag == "Player")
        {
            var player = collider.GetComponent<PlayerHealth>();
            if (player != null)
            {
                player.TakeDamage(Dmg);
                Destroy(gameObject);
            }
        }
        if (collider.tag == "Pylon") { Destroy(gameObject); }
        if (collider.tag == "Pillar") { Destroy(gameObject); }

    }
}
