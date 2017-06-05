using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FistSlam : MonoBehaviour
{
    public GameObject Rocks;
    public GameObject Target;
    public GameObject DMGCollider;
    public float ATKSpeed;
    bool RunExtraMechanic = false;
    Animator anim;
    Vector3 SpawnPosition;
    private TimeManager DeltaTime;
    public float Dist;
    public int counter;
    public float spawnDelay;
    private float startDelay;
    public float TimeToKill;
    float DT;
    int i = 0;
    
    public void RunMechanic()
    {
        anim.SetTrigger("DoubleSlam");

        DMGCollider.transform.position = Target.transform.position;
        DMGCollider.transform.rotation = Target.transform.rotation;
        Instantiate(DMGCollider);
        RunExtraMechanic = true;
        startDelay = spawnDelay;
    }

    // Use this for initialization
    void Start()
    {
        anim = GetComponent<Animator>();
        DeltaTime = FindObjectOfType<TimeManager>();
    }

    // Update is called once per frame
    void Update()
    {
        DT = DeltaTime.DT;
        if (RunExtraMechanic == true)
        {
            if (spawnDelay <= 0 && i <= 2)
            {
                spawnDelay -= DT;

                SpawnPosition = Target.transform.position += (Target.transform.forward * Dist);
                var Baby = Rocks;
                Baby.transform.position = SpawnPosition;
                Instantiate(Baby);
                Destroy(Baby, TimeToKill);
                spawnDelay = startDelay;

                i++;
            }

           if(i > counter)
            { i = 0; }
             

        }
    }
}
