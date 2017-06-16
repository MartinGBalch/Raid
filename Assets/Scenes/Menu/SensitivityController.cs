using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class SensitivityController : MonoBehaviour {
    [Range(40, 200)]
    public static float Xsensitivity;
    [Range(2, 50)]
    public static float Ysensitivity;
    [Range(40, 200)]
    public float Xsensitivityset;
    [Range(2, 50)]
    public float Ysensitivityset;

    public Slider Xaxis, Yaxis;
    public Text valuex, valuey;
    private ThirdPersonCameraController player;
    // Use this for initialization
    void Start () {
        Xsensitivity = Xsensitivityset;
        Ysensitivity = Ysensitivityset;
        player = FindObjectOfType<ThirdPersonCameraController>();
       
    }
	
	// Update is called once per frame
	void Update () {
      
            Xsensitivity = Xsensitivityset;
            Ysensitivity = Ysensitivityset;
        if (Xaxis != null)
        {
            Xsensitivityset = Xaxis.value;
            valuex.text = Xaxis.value.ToString();
            Ysensitivityset = Yaxis.value;

            valuey.text = Yaxis.value.ToString();
        }
     
    }

    public void OnXsensitivityChange()
    {
        Xsensitivityset = Xaxis.value;
    }
    public void OnYsensitivityChange()
    {

        Ysensitivityset = Yaxis.value;
    }
}
