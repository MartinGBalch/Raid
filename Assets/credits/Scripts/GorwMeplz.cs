using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GorwMeplz : MonoBehaviour {

    public GameObject titleGrow;
    bool Grownow, Shrink;
    bool Passed = false;
    float DT;
    public float speed;
    // Use this for initialization
    void Start()
    {
        titleGrow.transform.localScale = new Vector3(0, 0, 0);
    }

    // Update is called once per frame
    void Update()
    {

        if (Grownow)
        {
            DT = Time.deltaTime;
            titleGrow.transform.localScale += new Vector3(speed * DT,  speed * DT,  speed * DT);

            if(titleGrow.transform.localScale.y > 1)
            {
                titleGrow.transform.localScale = new Vector3(1, 1, 1);
            }

           // titleGrow.transform.localScale = new Vector3(Mathf.Clamp(transform.localScale.x, -.01f, 1.01f), Mathf.Clamp(transform.localScale.y, -.01f, 1.01f), Mathf.Clamp(transform.localScale.z, -.01f, 1.01f));

        }
        if (Shrink)
        {
            DT = Time.deltaTime;
            titleGrow.transform.localScale -= new Vector3(DT * speed, DT * speed, DT * speed);
            if (titleGrow.transform.localScale.y < 0)
            {
                titleGrow.transform.localScale = new Vector3(0,0, 0);
            }
            // titleGrow.transform.localScale = new Vector3(Mathf.Clamp(transform.localScale.x, -.01f, 1.01f), Mathf.Clamp(transform.localScale.y, -.01f, 1.01f), Mathf.Clamp(transform.localScale.z, -.01f, 1.01f));
        }
    }

    public void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Cam"))
        {
            titleGrow.SetActive(true);
            if (Passed == false)
            {
                Grownow = true;
                Shrink = false;
            }
        }
    }
    public void OnTriggetExit(Collider other)
    {
        
            Shrink = true;
            Grownow = false;
            Passed = true;
        
    }
}
