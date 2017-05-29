using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SuperSlash : MonoBehaviour {
    private GameObject Slash;
    private Rigidbody RB;
    public float Speed;
    private float DT;
    public float DamageAmount;
    public int X, Y, Z, TempY, TempX, TempZ;
    public Vector3 StartPos;
	// Use this for initialization
	void Awake () {
        Slash = GetComponent<GameObject>();
        RB = GetComponent<Rigidbody>();
        StartPos = transform.position;
	}
	
	// Update is called once per frame
	void Update ()
    {
        DT = Time.deltaTime;
        Vector3 Dir = transform.forward;
        RB.velocity = Dir * Speed;
        transform.localScale += new Vector3(5 * DT, 5* DT, 5 * DT);
        transform.localScale = new Vector3( Mathf.Clamp(transform.localScale.x, TempX, X), Mathf.Clamp(transform.localScale.y, TempY, Y), Mathf.Clamp(transform.localScale.z, TempZ, Z));
        if(Vector3.Distance(transform.position,StartPos) > 100)
        {
            Destroy(gameObject);
        }
	}
    private void OnTriggerEnter(Collider other)
    {
       if(other.GetComponent<IDamageable>() != null && other.tag != "Player")
        {
            var IsDamageable = other.GetComponent<IDamageable>();
            IsDamageable.TakeDamage(DamageAmount);
        }
    }
}
