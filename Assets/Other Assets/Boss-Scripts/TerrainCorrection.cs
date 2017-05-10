using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TerrainCorrection : MonoBehaviour {

	
	void Start ()
    {
        RaycastHit hit;
        if(Physics.Raycast(transform.position, -transform.up, out hit, 50))
        {
            if(hit.collider.tag == "Floor")
            {
                transform.position = new Vector3(transform.position.x, hit.collider.transform.position.y, transform.position.z);
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
