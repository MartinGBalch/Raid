using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using uCPf;
using UnityEngine.UI;
using UnityEngine.SceneManagement;
public class MaterialChangeManager : MonoBehaviour {
    public static bool ChangeTexture;
    public static int SetTexutre;
    public Material setmat;
    public static Material mat;
    public Material[] baseMats;
    public Material[] CustombaseMats;
    public Renderer CustombaseRenders;
    public GameObject[] TextureEditors;
    private GameObject[] Foundeditable,FoundBase;
    public bool change,custom;
    public string Desired;
    public static string DesiredSet;
    public bool array;
    [System.Serializable]
    public class EditMe
    {
        public Slider LightThreshhold, ShadowIntensity, LightSmoothness, RimSmoothness, Shininess, SpecluarIntensity, Rimsize, RimIntensity, outlinesize;
        public ColorPicker ShadowColor, SpecularColor, RimColor, OutlineColor,HighlightColor;
      
    }
    public bool autoGenerate;
    public int EditableAmount, BaseAmount;
    public string desiredtagditable,desiredtagbase;
    public EditMe[] editorz;

    public Renderer rend;
    public static Renderer RendererBase;


    public int desired;
    public int customDesired;
    // Use this for initialization
    private void Awake()
    {
        DontDestroyOnLoad(gameObject);

    }
    void Start () {
        DesiredSet = Desired;
        //for (int i = 0; i < CustombaseRenders.materials.Length; i++)
        //{
        //    CustombaseRenders.materials[i].color = new Vector4(CustombaseRenders.materials[i].color.r, CustombaseRenders.materials[i].color.g, CustombaseRenders.materials[i].color.b, 0);
        //    basereders.materials[i].color = new Vector4(CustombaseRenders.materials[i].color.r, CustombaseRenders.materials[i].color.g, CustombaseRenders.materials[i].color.b, 0);
        //}
        for(int i = 0; i < CustombaseMats.Length; i++)
        {
            CustombaseMats[i].shader = Shader.Find("MK/Toon/Free");

        }

        for (int i = 0; i < editorz.Length; i++)
        {

            editorz[i].LightThreshhold.value = CustombaseMats[i].GetFloat("_LightThreshold");

            editorz[i].ShadowIntensity.value = CustombaseMats[i].GetFloat("_ShadowIntensity");

            editorz[i].LightSmoothness.value = CustombaseMats[i].GetFloat("_LightSmoothness");

            editorz[i].RimSmoothness.value = CustombaseMats[i].GetFloat("_RimSmoothness");

            editorz[i].Shininess.value = CustombaseMats[i].GetFloat("_Shininess");

            editorz[i].SpecluarIntensity.value = CustombaseMats[i].GetFloat("_SpecularIntensity");

            editorz[i].Rimsize.value = CustombaseMats[i].GetFloat("_RimSize");

            editorz[i].RimIntensity.value = CustombaseMats[i].GetFloat("_RimIntensity");

            editorz[i].outlinesize.value = CustombaseMats[i].GetFloat("_OutlineSize");

            editorz[i].ShadowColor.color = CustombaseMats[i].GetColor("_ShadowColor");

            editorz[i].SpecularColor.color = CustombaseMats[i].GetColor("_SpecColor");

            editorz[i].RimColor.color = CustombaseMats[i].GetColor("_RimColor");

            editorz[i].OutlineColor.color = CustombaseMats[i].GetColor("_OutlineColor");

            editorz[i].HighlightColor.color = CustombaseMats[i].GetColor("_HighlightColor");
        }
        //rend = GetComponent<Renderer>();
            rend.material.shader = Shader.Find("MK/Toon/Free");
        
            CustombaseRenders.material.shader = Shader.Find("MK/Toon/Free");
    
        
     
    }

    public void CustomMat(int i)
    {
        CustombaseMats[i].SetFloat("_LightThreshold", editorz[i].LightThreshhold.value);

        CustombaseMats[i].SetFloat("_ShadowIntensity", editorz[i].ShadowIntensity.value);

        CustombaseMats[i].SetFloat("_LightSmoothness", editorz[i].LightSmoothness.value);

        CustombaseMats[i].SetFloat("_RimSmoothness", editorz[i].RimSmoothness.value);

        CustombaseMats[i].SetFloat("_Shininess", editorz[i].Shininess.value);

        CustombaseMats[i].SetFloat("_SpecularIntensity", editorz[i].SpecluarIntensity.value);

        CustombaseMats[i].SetFloat("_RimSize", editorz[i].Rimsize.value);

        CustombaseMats[i].SetFloat("_RimIntensity", editorz[i].RimIntensity.value);


        CustombaseMats[i].SetFloat("_OutlineSize", editorz[i].outlinesize.value);


        CustombaseMats[i].SetVector("_ShadowColor", editorz[i].ShadowColor.color);

        CustombaseMats[i].SetVector("_SpecColor", editorz[i].SpecularColor.color);

        CustombaseMats[i].SetVector("_RimColor", editorz[i].RimColor.color);

        CustombaseMats[i].SetVector("_OutlineColor", editorz[i].OutlineColor.color);

        CustombaseMats[i].SetVector("_HighlightColor", editorz[i].HighlightColor.color);
        

    }
    

    // Update is called once per frame
    void Update ()
    {
        
        if(desired < 0)
        {
            desired = CustombaseMats.Length - 1 ;
        }

        if(custom)
        {
            switch(desired)
            {
                case 0:
                    CustomMat(0);
                    setmat = CustombaseMats[0];
                    break;
                case 1:
                    CustomMat(1); 
                    setmat = CustombaseMats[1];
                    break;
                case 2:
                    CustomMat(2);
                    setmat = CustombaseMats[2];
                    break;
                case 3:
                    CustomMat(3);
                    setmat = CustombaseMats[3];
                    break;
                case 4:
                    CustomMat(4);
                    setmat = CustombaseMats[4];
                    break;
            }

          
        }
        else
        {
            //switch (desired)
            //{
            //    case 0:
            //        //baseMat = baseMats[0];
            //        rend = basereders[0];
            //        break;
            //    case 1:
            //        //baseMat = baseMats[1];
            //        rend = basereders[1];
            //        break;
            //    case 2:
            //        //baseMat = baseMats[2];
            //        rend = basereders[2];
            //        break;
            //    case 3:
            //        //baseMat = baseMats[3];
            //        rend = basereders[3];
            //        break;
            //    case 4:
            //       // baseMat = baseMats[4];
            //        rend = basereders[4];
            //        break;
            //}
        }
        for(int i = 0; i < CustombaseMats.Length; i++)
        {
        //    CustombaseRenders[i].gameObject.SetActive(false);
        //    basereders[i].gameObject.SetActive(false);
        //    CustombaseRenders[desired].enabled = false;
        //    basereders[desired].enabled = false;
        }
        if(custom)
        {
            CustombaseRenders.material = CustombaseMats[desired];
       
        }
        else
        {
            CustombaseRenders.material = baseMats[desired];
        }
        if (CustombaseRenders != null)
        {
            rend = CustombaseRenders;

            mat = setmat;
            RendererBase = rend;
        }
	}
    public void NextTexture()
    {

        

        if (desired < baseMats.Length - 1)
        {
            desired++;
        }
        else
        {
            desired = 0;
        }
        if (custom)
        {
            for(int i = 0; i < TextureEditors.Length;i++)
            {
                if(i == desired)
                {
                    TextureEditors[i].SetActive(true);
                }
                else
                {
                    TextureEditors[i].SetActive(false);
                }
            }
        }
    }
    public void Previous()
    {
        if (desired > 0)
        {
            desired--;
        }
        else if (desired == 0)
        {
            desired = baseMats.Length - 1;
        }
        if (custom)
        {
            for (int i = 0; i < TextureEditors.Length; i++)
            {
                if (i == desired)
                {
                    TextureEditors[i].SetActive(true);
                }
                else
                {
                    TextureEditors[i].SetActive(false);
                }
            }
        }
    }
    public void CustomClick()
    {
        custom = true;

        rend.material = CustombaseMats[desired];
        TextureEditors[desired].SetActive(true);

    }
    public int CurrentBase;
    public int currentEdit;
    public void baseClick()
    {
        custom = false;

        for (int i = 0; i < TextureEditors.Length; i++)
        {
            
                TextureEditors[i].SetActive(false);
            
        }
        rend.material = baseMats[desired];
    }
}
