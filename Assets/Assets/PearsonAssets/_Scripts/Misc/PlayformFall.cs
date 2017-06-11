using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayformFall : MonoBehaviour {
    public GameObject[] Platforms;
    public GameObject[] Pylons;
    public GameObject[] jumpPads;
    public bool die;
    public int dieNumb;
    float DT;
    public float fallSpeed;
    public float fallTime;
    public float faller;
	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
        DT = Time.deltaTime;
        if(die)
        {
          
            if(dieNumb == 0)
            {
               
                    if (Pylons[1].GetComponent<BossPartsHealth>().Alive == false)
                    {
                        Pylons[1].transform.position -= new Vector3(0, DT * fallSpeed, 0);

                        Platforms[1].transform.position -= new Vector3(0, DT * fallSpeed, 0);
                        jumpPads[1].transform.position -= new Vector3(0, DT * fallSpeed, 0);
                        jumpPads[0].transform.position -= new Vector3(0, DT * fallSpeed, 0);
                    }
                    if (Pylons[3].GetComponent<BossPartsHealth>().Alive == false)
                    {

                        Pylons[3].transform.position -= new Vector3(0, DT * fallSpeed, 0);

                        Platforms[3].transform.position -= new Vector3(0, DT * fallSpeed, 0);
                        jumpPads[3].transform.position -= new Vector3(0, DT * fallSpeed, 0);
                        jumpPads[2].transform.position -= new Vector3(0, DT * fallSpeed, 0);
                }
                
            }
            else if(dieNumb == 3)
            {
               
                    if (Pylons[2].GetComponent<BossPartsHealth>().Alive == false)
                    {
                        Pylons[2].transform.position -= new Vector3(0, DT * fallSpeed, 0);

                        Platforms[2].transform.position -= new Vector3(0, DT * fallSpeed, 0);
                        jumpPads[2].transform.position -= new Vector3(0, DT * fallSpeed, 0);

                        jumpPads[1].transform.position -= new Vector3(0, DT * fallSpeed, 0);
                    }
                    if (Pylons[0].GetComponent<BossPartsHealth>().Alive == false)
                    {

                        Pylons[0].transform.position -= new Vector3(0, DT * fallSpeed, 0);

                        Platforms[0].transform.position -= new Vector3(0, DT * fallSpeed, 0);
                        jumpPads[0].transform.position -= new Vector3(0, DT * fallSpeed, 0);
                        jumpPads[3].transform.position -= new Vector3(0, DT * fallSpeed, 0);
                }
                
            }
            else if (dieNumb == 2)
            {

                if (Pylons[3].GetComponent<BossPartsHealth>().Alive == false)
                {
                    Pylons[3].transform.position -= new Vector3(0, DT * fallSpeed, 0);

                    Platforms[3].transform.position -= new Vector3(0, DT * fallSpeed, 0);
                    jumpPads[3].transform.position -= new Vector3(0, DT * fallSpeed, 0);

                    jumpPads[2].transform.position -= new Vector3(0, DT * fallSpeed, 0);
                }
                if (Pylons[1].GetComponent<BossPartsHealth>().Alive == false)
                {

                    Pylons[1].transform.position -= new Vector3(0, DT * fallSpeed, 0);

                    Platforms[1].transform.position -= new Vector3(0, DT * fallSpeed, 0);
                    jumpPads[0].transform.position -= new Vector3(0, DT * fallSpeed, 0);
                    jumpPads[1].transform.position -= new Vector3(0, DT * fallSpeed, 0);
                }

            }
            else if (dieNumb == 1)
            {

                if (Pylons[2].GetComponent<BossPartsHealth>().Alive == false)
                {
                    Pylons[2].transform.position -= new Vector3(0, DT * fallSpeed, 0);

                    Platforms[2].transform.position -= new Vector3(0, DT * fallSpeed, 0);
                    jumpPads[2].transform.position -= new Vector3(0, DT * fallSpeed, 0);

                    jumpPads[1].transform.position -= new Vector3(0, DT * fallSpeed, 0);
                }
                if (Pylons[0].GetComponent<BossPartsHealth>().Alive == false)
                {

                    Pylons[0].transform.position -= new Vector3(0, DT * fallSpeed, 0);

                    Platforms[0].transform.position -= new Vector3(0, DT * fallSpeed, 0);
                    jumpPads[0].transform.position -= new Vector3(0, DT * fallSpeed, 0);
                    jumpPads[3].transform.position -= new Vector3(0, DT * fallSpeed, 0);
                }

            }
            if (faller < 0)
            {
                die = false;
            }
        }
		//NOTE I AM DOING THIS IN SUCH A BAD WAY
	}
}
