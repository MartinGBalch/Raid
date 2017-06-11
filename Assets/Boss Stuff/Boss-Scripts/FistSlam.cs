using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FistSlam : MonoBehaviour
{
    public GameObject Rocks;
    public GameObject Target;
    public GameObject DMGCollider;
    public float ATKSpeed;
    private GameObject Boss;
    public bool SpawnRocks;
    Animator anim;
    
    public Vector3 SpawnPos;
    private TimeManager DeltaTime;
    public float Dist;
    public int counter;
    public float spawnDelay;
    private float startDelay;
    
    float DT;
    
    public float distDIF;
    
    public void RunMechanic()
    {
        SpawnRocks = true;
        anim.SetTrigger("DoubleSlam");

        Instantiate(DMGCollider, Target.transform.position, Target.transform.rotation);
       // SpawnRockz();

        startDelay = spawnDelay;
    }

    // Use this for initialization
    void Start()
    {
        
        SpawnRocks = false;
        
        anim = GetComponent<Animator>();
        DeltaTime = FindObjectOfType<TimeManager>();
    }


    void SpawnRockz()
    {
        var Baby = Rocks;
        SpawnPos = Target.transform.position + (Target.transform.forward * Dist);
        SpawnPos.y = 20;
        Rocks.transform.rotation = transform.rotation;

        Instantiate(Baby);

        spawnDelay = startDelay;
    }

    // Update is called once per frame
    void Update()
    {
        //DT = DeltaTime.DT;
        //if (SpawnRocks == true)
        //{
        //    var Baby = Rocks;
        //    SpawnPos = Target.transform.position + (Target.transform.forward * Dist);

        //    RaycastHit hit;
        //    if (Physics.Raycast(SpawnPos, Vector3.down, out hit, 50))
        //    {
        //        if (hit.collider.tag == "Floor")
        //        {
        //            distDIF = Mathf.Abs(hit.point.y - SpawnPos.y);

        //            Vector3 NewPos = new Vector3(SpawnPos.x, hit.point.y, SpawnPos.z);

        //            Baby.transform.position = NewPos;
        //        }
        //    }
        //    Rocks.transform.rotation = Target.transform.rotation;

        //    Instantiate(Baby);
        
        //    spawnDelay = startDelay;


            //spawnDelay -= DT;
            //if (spawnDelay <= 0 && i <= (counter + 1))
            //{

            //    var Baby = Rocks;
            //    SpawnPos = Target.transform.position + (Target.transform.forward * (Dist * i));

            //    RaycastHit hit;
            //    if (Physics.Raycast(SpawnPos, Vector3.down, out hit, 50))
            //    {
            //        if (hit.collider.tag == "Floor")
            //        {
            //            distDIF = Mathf.Abs(hit.point.y - SpawnPos.y);

            //            Vector3 NewPos = new Vector3(SpawnPos.x, hit.point.y, SpawnPos.z);

            //            Baby.transform.position = NewPos;
            //        }
            //    }


            //    Baby.transform.localScale = new Vector3(1 * i, 1 * i, 1 * i);


            //    Rocks.transform.rotation = Target.transform.rotation;

            //    Instantiate(Baby);

            //    spawnDelay = startDelay;

            //    i++;
            //}

            //if (i > (counter + 1))
            //{ i = 0; SpawnRocks = false; }

        


    }
    //public void DoubleSlamLand()
    //{
    //    Instantiate(DMGCollider, Target.transform.position, DMGCollider.transform.rotation);

    //    var Baby = Rocks;
    //    SpawnPos = Target.transform.position + (Target.transform.forward * Dist);
    //    SpawnPos.y = 20;
    //    //Rocks.transform.rotation = Target.transform.rotation;

    //    Instantiate(Rocks, Target.transform.position + (Target.transform.forward * Dist), Target.transform.rotation);

    //    spawnDelay = startDelay;


    //}

}

