using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CreditsStagechange : MonoBehaviour {
    public int stage;
    public int nextStage;
    bool passed;
    public GameObject[] objectsTodisable,objectsToEnable;
    public Animator bossanim;
    public Fade fader;

	// Use this for initialization
	void Start () {
        bossanim = GameObject.FindGameObjectWithTag("Boss").GetComponent<Animator>();
	}
	
	// Update is called once per frame
	void Update () {
		
	}

    public void OnTriggerEnter(Collider other)
    {
        if(passed == false)
        {

            for (int i = 0; i < objectsTodisable.Length; i++)
            {
                objectsTodisable[i].transform.localScale = new Vector3(0, 0, 0);// (false);
            }

            for (int i = 0; i < objectsToEnable.Length; i++)
            {
                objectsToEnable[i].SetActive(true);
            }
            switch (stage)
            {
                case 1:
                    bossanim.SetTrigger("Enter2");
                    break;

                case 2:
                    bossanim.SetTrigger("EnterOut");
                    break;
                case 3:
                    bossanim.SetTrigger("EnterSpit");
                    break;

            }
            passed = true;
        }
        
    }
}
