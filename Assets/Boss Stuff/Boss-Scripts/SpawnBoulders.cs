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
               
                    for (int g = 0; g < ListOFun.Count; g++)
                    {
                        if (!ListOFun[g].activeInHierarchy)

                        {
                            float RandX = Random.Range(-Range, Range);
                            float RandZ = Random.Range(-Range, Range);
                            float RandY = Random.Range(heightMin, heightMax);

                            ListOFun[g].SetActive(true);
                            ListOFun[g].transform.position = new Vector3(transform.position.x + RandX, RandY, transform.position.z + RandZ);
                            break;
                            //var AoE = AoeEffect;
                            //AoE.transform.position = new Vector3(transform.position.x + RandX, RandY, transform.position.z + RandZ);
                            //Instantiate(AoE);
                        }
                    }

                //ListOFun[j].transform.position = new Vector3(transform.position.x + RandX, RandY, transform.position.z + RandZ);
                //ListOFun[j].SetActive(true);
                //COMENTED THIS OUT DURING MERGE
                break;
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
