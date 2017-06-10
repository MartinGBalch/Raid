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
    List<GameObject> ListOFun;
    public int PooledObjectCount;

    public void RunMechanic()
    {
       
            for (int i = 0; i < spawnCount; i++)
            {
<<<<<<< HEAD
                for(int j = 0; j < ListOFun.Count; j++)
            {
                if(!ListOFun[j].activeInHierarchy)
=======
            for (int j = 0; j < ListOFun.Count; j++)
            {
                if (!ListOFun[j].activeInHierarchy)
>>>>>>> test-build
                {
                    float RandX = Random.Range(-Range, Range);
                    float RandZ = Random.Range(-Range, Range);
                    float RandY = Random.Range(heightMin, heightMax);
<<<<<<< HEAD
                    ListOFun[j].SetActive(true);
                    ListOFun[j].transform.position = new Vector3(transform.position.x + RandX, RandY, transform.position.z + RandZ);
                    break;
                    //var AoE = AoeEffect;
                    //AoE.transform.position = new Vector3(transform.position.x + RandX, RandY, transform.position.z + RandZ);
                    //Instantiate(AoE);
                }
            }
                
=======
                    ListOFun[j].transform.position = new Vector3(transform.position.x + RandX, RandY, transform.position.z + RandZ);
                    ListOFun[j].SetActive(true);

                    break;
                }

            }



           
>>>>>>> test-build
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
