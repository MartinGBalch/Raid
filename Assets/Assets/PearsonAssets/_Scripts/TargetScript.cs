using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
public class TargetScript : MonoBehaviour {

    public Camera PlayerCamera;
    public ThirdPersonCameraController Cam;
    private Transform Target;
    public Image Picture;

	void Start ()
    {
		
	}
	
	void Update ()
    {
        Picture.enabled = false;

        if (Cam.target != null)
        {
            
            //ebug.Log("TRRRRRRRACK");
            
            Vector3 screenPos = PlayerCamera.WorldToScreenPoint(Cam.target.transform.position);

            if(screenPos.z <= 0.0f)
            {
                return;
            }

            Picture.enabled = true;
            Debug.Log(screenPos);
            Picture.rectTransform.position = screenPos;
        }
		
	}
}
