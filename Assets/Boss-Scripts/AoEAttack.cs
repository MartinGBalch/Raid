using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AoEAttack : MonoBehaviour {

    public GameObject AoeEffect;
    public float spawnCount;
    public float CoolDown;
    private float StartCD;
    public float Range;
    // Use this for initialization
    void Start()
    {
        StartCD = CoolDown;
    }

    // Update is called once per frame
    void Update()
    {
        CoolDown -= Time.deltaTime;
        if (CoolDown <= 0)
        {
            CoolDown = StartCD;
            for (int i = 0; i < spawnCount; i++)
            {
                float RandX = Random.Range(-Range, Range);
                float RandZ = Random.Range(-Range, Range);
                var AoE = AoeEffect;
                AoE.transform.position = new Vector3(transform.position.x + RandX, 0, transform.position.z + RandZ);
                Instantiate(AoE);
            }
        }
    }
}
