using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RockDamage : MonoBehaviour {

    private TimeManager DeltaTime;
    public float Damage;
    public float TimeToKill;
    Vector3 UpPos;
    Vector3 ForPos;
    public float UpSpeed;
    public float ForSpeed;
    public float UpDistance;
    public float ForDistance;
    float DT;
    Transform MyT;
    public float HeightUnderFloor;
    void OnTriggerEnter(Collider other)
    {
        if(other.tag == "Player")
        {
            var player = other.GetComponent<PlayerHealth>();
            player.TakeDamage(Damage);
        }
        if (other.tag == "Pylon") { Destroy(gameObject); }
        if (other.tag == "Pillar") { Destroy(gameObject); }
    }


	// Use this for initialization
	void Start ()
    {
        MyT = GetComponent<Transform>();
        DeltaTime = FindObjectOfType<TimeManager>();
        //UpPos = MyT.position + (MyT.up*UpDistance);
        ForPos = MyT.position + (MyT.forward * ForDistance);

        Destroy(gameObject, TimeToKill);
        RaycastHit hit;
        if (Physics.Raycast(MyT.position, Vector3.up, out hit, 50))
        {
            if (hit.collider.tag == "Floor")
            {
                float distDIF = Mathf.Abs(hit.point.y - MyT.position.y);

                Vector3 NewPos = new Vector3(MyT.position.x, hit.point.y, MyT.position.z);
                UpPos = NewPos;
                NewPos.y -= HeightUnderFloor;
                MyT.position = NewPos;
            }
        }

    }

    // Update is called once per frame
    void Update ()
    {
        Debug.DrawLine(MyT.position, UpPos);
        Debug.DrawLine(MyT.position, ForPos);
        DT = DeltaTime.DT;
       // MyT.position = Vector3.Lerp(MyT.position, UpPos, UpSpeed * DT);
        MyT.position = Vector3.Lerp(MyT.position, ForPos, ForSpeed * DT);

	}
}
