using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TerrainCorrection : MonoBehaviour {

    float distDIF;
	void Start ()
    {
        RaycastHit hit;
        if(Physics.Raycast(transform.position, -transform.up, out hit, 50))
        {
            if(hit.collider.tag == "Floor")
            {
                distDIF = hit.distance - transform.position.y;
                
                transform.position = new Vector3(transform.position.x, hit.transform.position.y - distDIF - transform.localScale.y, transform.position.z);
            }
            else
            {
                Destroy(gameObject);
            }
        }
	}
	
	// Update is called once per frame
	void Update () {
		
	}
}
