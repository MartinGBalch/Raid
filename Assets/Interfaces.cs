using System.Collections;
using System.Collections.Generic;
using UnityEngine;


interface IDamageable
{
    float EstimatedDamageTaken(float damageDealt);
    void TakeDamage(float damageDealt);

}
interface IHealable
{
    float EstimatedHealingReceived(float healing);
    void TakeHealing(float healing);
}
interface IStaminable
{
    float EstimatedStaminaDrain(float StaminaDrainage);
    void StaminaDrain(float StaminaDrainage);
}

interface IAlive
{
    bool isAlive(float Health);
}

//public class Interfaces : MonoBehaviour {

//	// Use this for initialization
//	void Start () {
		
//	}
	
//	// Update is called once per frame
//	void Update () {
		
//	}
//}
