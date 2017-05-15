using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MinionSpawn : MonoBehaviour {


    public GameObject Minion;
    public float spawnCount;
    public float Range;
    
    // Use this for initialization
    void Start () {
		
	}


    public void RunMechanic()
    {
        for (int i = 0; i < spawnCount; i++)
        {
            float RandX = Random.Range(-Range, Range);
            float RandZ = Random.Range(-Range, Range);
            var MinionBaby = Minion;
            MinionBaby.transform.position = new Vector3(transform.position.x + RandX, transform.position.y, transform.position.z + RandZ);
            Instantiate(MinionBaby);
        }
    }


	// Update is called once per frame
	void Update () {
		
	}
}
