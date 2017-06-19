using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerValues : MonoBehaviour {
    public static bool ChangeTexture;
    public static int SetTexutre;
    public static Material baseMat;
    public static Material[] baseMats;
    public bool change;
    public int desired;
    // Use this for initialization
    void Start()
    {
        //baseMat = baseMats[0];
    }

    // Update is called once per frame
    void Update()
    {
        if (change)
        {
            for (int i = 0; i < baseMats.Length; i++)
            {
                if (i == desired)
                {
                    baseMat = baseMats[i];
                    break;
                }
                if (i == baseMats.Length - 1)
                {
                    baseMat = baseMats[0];
                }
            }
            change = false;
        }
    }
}
