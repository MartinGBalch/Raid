using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
public class TargetScript : MonoBehaviour {

    public Camera PlayerCamera;
    public ThirdPersonCameraController Cam;
    private Transform Target;
    public Image Picture, healthBar;

	void Start ()
    {
		
	}
	
	void Update ()
    {
        Picture.enabled = false;
        healthBar.enabled = false;
        if (Cam.target != null)
        {
            

            if(Cam.target.GetComponent<BossPartsHealth>() != null)
            {
                healthBar.fillAmount = Cam.target.GetComponent<BossPartsHealth>().Health / Cam.target.GetComponent<BossPartsHealth>().StartHealth;
            }
            else if(Cam.target.GetComponent<MinionHealth>() != null)
            {
                healthBar.fillAmount = Cam.target.GetComponent<MinionHealth>().Health / 75;
            }
            else if (Cam.target.GetComponent<BossHealth>() != null)
            {
                healthBar.fillAmount = Cam.target.GetComponent<BossHealth>().Health / 1000;
            }

            //ebug.Log("TRRRRRRRACK");

            Vector3 screenPos = PlayerCamera.WorldToScreenPoint(Cam.target.transform.position);

            if(screenPos.z <= 0.0f)
            {
                return;
            }

            Picture.enabled = true;
            healthBar.enabled = true;
            Picture.rectTransform.position = screenPos;
        }
		
	}
}
