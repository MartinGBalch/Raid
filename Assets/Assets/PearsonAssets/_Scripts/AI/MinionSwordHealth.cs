using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MinionSwordHealth : MonoBehaviour, IDamageable {

    public float Health;
    public float ResistDamage;
    public float MaxHealth;
    
    public bool Imune;
    private SwordSwingMinion minion;
    public CameraShake Shake;
    public GameObject Base;
    public ParticleSystem Damage;
    public GameObject blood;
    void Start()
    {
        MaxHealth = Health;
        Shake = FindObjectOfType<CameraShake>();
        minion = GetComponent<SwordSwingMinion>();
    }

    public float EstimatedDamageTaken(float damageDealt)
    {
        return damageDealt - ResistDamage;
    }
    public void TakeDamage(float damageDealt)
    {
        
            Shake.StartShake(Shake.AttackProperties);
            Health -= (damageDealt);
            minion.MP.Damaged = true;
            minion.In = true; ;
            if (Health <= 0)
            {
            Instantiate(blood, transform.position,transform.rotation);
           
            }
            Damage.Play();
        
    }

 

    // Update is called once per frame
    void Update()
    {
        Health = Mathf.Clamp(Health, 0, MaxHealth);
        if (Health <= 0)
        {
           
           
                Destroy(Base);
            
        }
    }
}
