using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class IceSpawn : MonoBehaviour {
    public GameObject[] SpwnPnts;
    float DT;
    float delay;
    public float SpawnDelay;
    public GameObject Ice;
    private ThirdPersonCameraController cam;
    private ThirdPersonPlayerController player;
    public bool launch;
    private int IceCount = 0;
    public float launchDelay;
	// Use this for initialization
	void Start () {
        cam = FindObjectOfType<ThirdPersonCameraController>();
        player = FindObjectOfType<ThirdPersonPlayerController>();
       
	}
	
	// Update is called once per frame
	void Update ()
    {
        DT = Time.deltaTime;

        delay -= DT;
        if (launch)
        {
            if (delay <= 0)
            {
                for (int i = 0; i < SpwnPnts.Length; i++)
                {
                    
                    if (i >= IceCount && i <= SpwnPnts.Length || i == 0 && IceCount == 0)
                    {
                        GameObject launcher = Instantiate(Ice, SpwnPnts[i].transform.position, SpwnPnts[i].transform.rotation);
                        launcher.transform.parent = SpwnPnts[i].transform;
                        launcher.GetComponent<SuperIce>().seek = true;
                        launcher.GetComponent<SuperIce>().target = cam.target;
                        launcher.GetComponent<SuperIce>().launchDelay = launchDelay;
                        delay = SpawnDelay;
                        IceCount++;
                        break;
                    }
                    if (i == SpwnPnts.Length)
                    {
                       
                            IceCount = 0;
                            launch = false;
                            break;
                        
                    }
                }
            }
        }
	}
}
