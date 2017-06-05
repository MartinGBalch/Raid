using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MinionSpawn : MonoBehaviour {


    public GameObject Minion;
    public GameObject Minion2;
    public float spawnCount;
    public float spawnCount2;
    public float MaxRange;
    public float MinRange;
    // Use this for initialization
    void Start () {
		
	}


    public void RunMechanic()
    {
        for (int i = 0; i < spawnCount; i++)
        {
            float RandX = Random.Range(MinRange, MaxRange);
            float RandZ = Random.Range(MinRange, MaxRange);
            Vector2 Dir = Random.insideUnitCircle;
            var MinionBaby = Minion;
            MinionBaby.transform.position = new Vector3(Dir.x + RandX , transform.position.y, Dir.y + RandZ );
            Instantiate(MinionBaby);
        }
        for (int i = 0; i < spawnCount2; i++)
        {
            float RandX = Random.Range(MinRange, MaxRange);
            float RandZ = Random.Range(MinRange, MaxRange);
            Vector2 Dir = Random.insideUnitCircle;
            var MinionBaby = Minion2;
            MinionBaby.transform.position = new Vector3(Dir.x + RandX, transform.position.y, Dir.y + RandZ);
            Instantiate(MinionBaby);
        }
    }


	// Update is called once per frame
	void Update () {
		
	}
}
