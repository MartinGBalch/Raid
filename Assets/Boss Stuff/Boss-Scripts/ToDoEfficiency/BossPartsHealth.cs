using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BossPartsHealth : MonoBehaviour, IDamageable
{

    public float Health;
    public float StartHealth;
    private float ResistDamage = 0;
    //public float DamageToBoss;
    //public GameObject Boss;
    public GameObject Mesh;
    public GameObject Manager;
    PylonManager PM;
    bool Reset = false;
    public bool Alive = true;
    public float ResetTimer;
    private float StartTime;
    public ParticleSystem Beam;
    public float EstimatedDamageTaken(float damageDealt)
    {
        return damageDealt - ResistDamage;
    }
    public void TakeDamage(float damageDealt)
    {
        Health -= EstimatedDamageTaken(damageDealt);
    }

    void Start ()
    {
        StartHealth = Health;
        StartTime = ResetTimer;
        PM = Manager.GetComponent<PylonManager>();
	}

    // Update is called once per frame
    void Update()
    {

        //if (Health > 0) { Debug.DrawLine(transform.position, Boss.transform.position); }

        if (Health <= 0)
        {
            Alive = false;
            PM.NeedReset = false;
            Health = StartHealth;

            

            Beam.Stop();
            Mesh.gameObject.GetComponent<MeshRenderer>().enabled = false;
            gameObject.GetComponent<CapsuleCollider>().enabled = false;
            PM.PylonCount--;
        }
        if (PM.NeedReset == true)
        {

           
                Alive = true;
                
                
                Mesh.gameObject.GetComponent<MeshRenderer>().enabled = true;
                gameObject.GetComponent<CapsuleCollider>().enabled = true;

            Beam.Play();




        }
    }
}
 //var BossStuff = Boss.GetComponent<BossHealth>();
           // //Boss.GetComponent<BossStateManagerTwo>().PylonCount--; 
           // //BossStuff.TakeDamage(DamageToBoss + BossStuff.ResistDamage);
           // Debug.Log("The Boss is Vulnerable");
           // BossStuff.ResistDamage = 0;