using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BossPartsHealth : MonoBehaviour, IDamageable
{

    public float Health;
    private float StartHealth;
    private float ResistDamage = 0;
    //public float DamageToBoss;
    public GameObject Boss;
    public GameObject Mesh;
    bool Reset = false;
    public float ResetTimer;
    private float StartTime;
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
	}
	
	// Update is called once per frame
	void Update ()
    {
		if(Health <= 0 && Reset == false)
        {
           var BossStuff = Boss.GetComponent<BossHealth>();
            //Boss.GetComponent<BossStateManagerTwo>().PylonCount--; 
            //BossStuff.TakeDamage(DamageToBoss + BossStuff.ResistDamage);
            Debug.Log("The Boss is Vulnerable");
            BossStuff.ResistDamage = 0;
            Mesh.gameObject.GetComponent<MeshRenderer>().enabled = false;
            gameObject.GetComponent<CapsuleCollider>().enabled = false;
            Reset = true;
        }
        if (Reset == true)
        {
            ResetTimer -= Time.deltaTime;
            if (ResetTimer <= 0)
            {
                Health = StartHealth;
                ResetTimer = StartTime;
                Mesh.gameObject.GetComponent<MeshRenderer>().enabled = true;
                gameObject.GetComponent<CapsuleCollider>().enabled = true;
                Reset = false;

            }

        }

	}
}
