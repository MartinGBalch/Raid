using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpawnBoulders : MonoBehaviour {

    List<GameObject> ListOFun;
    public int PooledObjectCount;

    public GameObject AoeEffect;
    public float spawnCount;
    public float CoolDown;
    private float StartCD;
    public float Range;
    public float heightMax;
    public float heightMin;

    public void RunMechanic()
    {
       
            for (int i = 0; i < spawnCount; i++)
            {
            for (int j = 0; j < ListOFun.Count; j++)
            {
                if (!ListOFun[j].activeInHierarchy)
                {
                    float RandX = Random.Range(-Range, Range);
                    float RandZ = Random.Range(-Range, Range);
                    float RandY = Random.Range(heightMin, heightMax);
                    ListOFun[j].transform.position = new Vector3(transform.position.x + RandX, RandY, transform.position.z + RandZ);
                    ListOFun[j].SetActive(true);

                    break;
                }

            }



           
            }
        
    }
    // Use this for initialization
    void Start ()
    {
        ListOFun = new List<GameObject>();
        for (int i = 0; i < PooledObjectCount; i++)
        {
            GameObject baby = (GameObject)Instantiate(AoeEffect);
            baby.SetActive(false);

            ListOFun.Add(baby);
        }
    }
	
	// Update is called once per frame
	void Update () {
		
	}
}
