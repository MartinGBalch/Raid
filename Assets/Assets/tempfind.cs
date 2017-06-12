using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class tempfind : MonoBehaviour {
    public OcclusionPortal[] temp;
    public OcclusionArea[] temper;
    // Use this for initialization
    void Start () {
        temp = FindObjectsOfType<OcclusionPortal>();
        temper = FindObjectsOfType<OcclusionArea>();
	}
	
	// Update is called once per frame
	void Update () {
		
	}
}
