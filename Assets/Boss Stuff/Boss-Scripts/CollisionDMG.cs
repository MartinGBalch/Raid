using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CollisionDMG : MonoBehaviour {

    public float Dmg;
    float distDIF;
    public float LerpSpeed;

    void OnTriggerEnter(Collider collider)
    {
        if(collider.tag == "Player")
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


    // Use this for initialization
    void Start()
    {
       
    }

    // Update is called once per frame
    void Update()
    {
        RaycastHit hit;
        if (Physics.Raycast(transform.position, -transform.up, out hit, 50))
        {
            if (hit.collider.tag == "Floor")
            {
                
                distDIF = Mathf.Abs(hit.point.y - transform.position.y);
              

                Vector3 POS = new Vector3(transform.position.x, hit.transform.position.y /*- distDIF*/, transform.position.z);
                
                
                transform.position = Vector3.Lerp(transform.position, POS, Time.deltaTime * LerpSpeed);
            }
           
            
        }
    }
}
