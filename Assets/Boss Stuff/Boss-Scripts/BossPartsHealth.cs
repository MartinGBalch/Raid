using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BossPartsHealth : MonoBehaviour, IDamageable
{

    public float Health;
    public float ResistDamage;
    public float DamageToBoss;
    public GameObject Boss;

    
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
		
	}
	
	// Update is called once per frame
	void Update ()
    {
		if(Health <= 0)
        {
           var BossStuff = Boss.GetComponent<BossHealth>();
            //Boss.GetComponent<BossStateManagerTwo>().PylonCount--; 
            BossStuff.TakeDamage(DamageToBoss + BossStuff.ResistDamage);
            BossStuff.ResistDamage = 0;
            Destroy(gameObject);
        }
	}
}
