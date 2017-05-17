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
                distDIF = Mathf.Abs(hit.point.y - transform.position.y);
                
                Vector3 NewPos = new Vector3(transform.position.x, transform.position.y - distDIF + (transform.localScale.y / 3) , transform.position.z);
                transform.position = NewPos;
            }
            else
            {
                Destroy(gameObject);
            }

        }
        else
        {
            Destroy(gameObject);
        }
    }
	
	// Update is called once per frame
	void Update ()
    {
		
	}
}
