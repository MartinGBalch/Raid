using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BirdSetMaterial : MonoBehaviour {
    public Material[] mat;
    public Renderer rend;
    public Renderer render;
    public Material material;
    public string desired;
    private MaterialChangeManager[] managers;
    public GameObject Objectmanagers;
    public BirdSetMaterial[] setters;
    public bool editor;
    // Use this for initialization

    public static MaterialChangeManager[] getChildren(GameObject parent, bool recursive = false)
    {
        List<MaterialChangeManager> items = new List<MaterialChangeManager>();
        for (int i = 0; i < parent.transform.childCount; i++)
        {
            if (parent.transform.GetChild(i).gameObject.GetComponent<MaterialChangeManager>() != null)
            {
                items.Add(parent.transform.GetChild(i).gameObject.GetComponent<MaterialChangeManager>());
            }
            if (recursive)
            { // set true to go through the hiearchy.
                items.AddRange(getChildren(parent.transform.GetChild(i).gameObject, recursive));
            }
        }
        return items.ToArray();
    }
    void Start()
    {
        setters = FindObjectsOfType<BirdSetMaterial>();
        render = GetComponent<Renderer>();
        material = render.material;
       // /rend = GetComponent<SkinnedMeshRenderer>();
        
        Objectmanagers = GameObject.FindGameObjectWithTag("EditBase");
        if (Objectmanagers != null)
        {
            managers = getChildren(Objectmanagers, false);
        }
        if (managers != null)
        {
            for (int i = 0; i < setters.Length; i++)
            {
                if (setters[i].desired == desired)
                {
                    if (setters[i].editor == true)
                    {
                        for (int j = 0; j < managers.Length; j++)
                        {
                            if (managers[j].Desired == desired)
                            {
                                rend = managers[j].rend;
                            }

                        }
                    }
                }

            }
        }
        // rend = managers[1] .RendererBase;
        if (rend != null)
        {

            material = rend.material;
            render.material = material;
        }
    }
	
	// Update is called once per frame
	void Update ()
    {
        //mat = MaterialChangeManager.mat;

       // rend = MaterialChangeManager.RendererBase;
        //material = rend.material;
        //render.material = material;

        // material = mat;
    }
}
