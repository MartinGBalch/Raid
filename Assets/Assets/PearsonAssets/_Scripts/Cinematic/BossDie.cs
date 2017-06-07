using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BossDie : MonoBehaviour {

    private BossHealth BossHP;
    private Animator PlayerAnim;
    public float obsorbTime;
	// Use this for initialization
	void Start () {
        BossHP = FindObjectOfType<BossHealth>();
        PlayerAnim = GameObject.FindGameObjectWithTag("Player").GetComponent<Animator>();
	}
	
	// Update is called once per frame
	void Update ()
    {
        obsorbTime -= Time.deltaTime;
	}
}
