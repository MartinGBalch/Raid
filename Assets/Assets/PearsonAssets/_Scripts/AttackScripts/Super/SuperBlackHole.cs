using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SuperBlackHole : MonoBehaviour {



    float DT;
    public float growSpeed, PylonGrowSpeed,BossGrowSpeed,MinionGrowSpeed;
    public float maxRadius,PylonRadius,BossRadius,MinionRadius;
    public float liveTime;
    public Transform part, part2;
    public GameObject Target;
    public float DamageAmount;
    public GameObject player;
    private void OnTriggerStay(Collider other)
    {
        if (other.GetComponent<IDamageable>() != null && other.tag != "Player")
        {


            var IsDamageable = other.GetComponent<IDamageable>();
            IsDamageable.TakeDamage(DamageAmount);
        }
    }

    // Use this for initialization
    void Start () {
        player = GameObject.FindGameObjectWithTag("Player");
        if (Target != null)
        {
            if (Target.CompareTag("Pylon"))
            {
                growSpeed = PylonGrowSpeed;
                maxRadius = PylonRadius;
            }
            else if (Target.CompareTag("Boss"))
            {
                growSpeed = BossGrowSpeed;
                maxRadius = BossRadius;
                transform.position = transform.position + new Vector3(0, 5, 0);
            }
            else if (Target.CompareTag("Enemy"))
            {
                growSpeed = MinionGrowSpeed;
                maxRadius = MinionRadius;
            }

        }
        else
        {

        }
    }

   
    // Update is called once per frame
    void Update () {
        DT = Time.deltaTime;
        liveTime -= DT;

        if (liveTime > 0)
        {
            GameObject[] objects = GameObject.FindGameObjectsWithTag("Enemy");
            if (objects != null)
            {
                for (int i = 0; i < objects.Length; i++)
                {
                    if (Vector3.Distance(objects[i].transform.position, transform.position) < 20)
                    {
                        objects[i].transform.position = Vector3.Lerp(objects[i].transform.position, transform.position, DT * 2);
                    }

                }
            }
            if(Target == null)
            { 
              transform.Translate(transform.forward * DT);
                transform.forward = player.transform.forward;
             }

            if(transform.localScale.x > .01)
            {
                GetComponent<SphereCollider>().enabled = true;
            }
            transform.localScale += new Vector3(DT * growSpeed, DT * growSpeed, DT * growSpeed);
            part.transform.localScale += new Vector3(DT * growSpeed, DT * growSpeed, DT * growSpeed);
            part2.transform.localScale += new Vector3(DT * growSpeed, DT * growSpeed, DT * growSpeed);
            transform.localScale = new Vector3(Mathf.Clamp(transform.localScale.x, 0, maxRadius), Mathf.Clamp(transform.localScale.z, 0, maxRadius), Mathf.Clamp(transform.localScale.y, 0, maxRadius));
            part.transform.localScale = new Vector3(Mathf.Clamp(part.transform.localScale.x, 0, maxRadius / 25), Mathf.Clamp(part.transform.localScale.z, 0, maxRadius / 25), Mathf.Clamp(part.transform.localScale.y, 0, maxRadius / 25));
            part2.transform.localScale = new Vector3(Mathf.Clamp(part2.transform.localScale.x, 0, maxRadius / 60), Mathf.Clamp(part2.transform.localScale.z, 0, maxRadius / 60), Mathf.Clamp(part2.transform.localScale.y, 0, maxRadius / 60));
        }
        else
        {
            transform.localScale -= new Vector3(DT * growSpeed, DT * growSpeed, DT * growSpeed);
            part.transform.localScale -= new Vector3(DT * growSpeed, DT * growSpeed, DT * growSpeed);
            part2.transform.localScale -= new Vector3(DT * growSpeed, DT * growSpeed, DT * growSpeed);
            transform.localScale = new Vector3(Mathf.Clamp(transform.localScale.x, 0, maxRadius), Mathf.Clamp(transform.localScale.z, 0, maxRadius), Mathf.Clamp(transform.localScale.y, 0, maxRadius));
            part.transform.localScale = new Vector3(Mathf.Clamp(part.transform.localScale.x, 0, maxRadius / 25), Mathf.Clamp(part.transform.localScale.z, 0, maxRadius / 25), Mathf.Clamp(part.transform.localScale.y, 0, maxRadius / 25));
            part2.transform.localScale = new Vector3(Mathf.Clamp(part2.transform.localScale.x, 0, maxRadius / 60), Mathf.Clamp(part2.transform.localScale.z, 0, maxRadius / 60), Mathf.Clamp(part2.transform.localScale.y, 0, maxRadius / 60));
            if(transform.localScale.x < .01)
            {
                part.GetComponent<ParticleSeek1>().enabled = false;

                part2.GetComponent<ParticleSeek1>().enabled = false;

                part.GetComponent<ParticleSystem>().Stop();

                part2.GetComponent<ParticleSystem>().Stop();
                Destroy(gameObject, .1f);
            }
        }
    }
    //      if (other.CompareTag("Enemy"))
    //                {
    //                    other.GetComponent<MinionSwordHealth>().TakeDamage(DamageAmount);
    //}
    //                else if (other.CompareTag("Pylon"))
    //                {
    //                    other.GetComponent<BossPartsHealth>().TakeDamage(DamageAmount);
    //                }
    //                else if (other.CompareTag("Boss"))
    //                {
    //                    other.GetComponent<BossHealth>().TakeDamage(DamageAmount);
    //                }


}
