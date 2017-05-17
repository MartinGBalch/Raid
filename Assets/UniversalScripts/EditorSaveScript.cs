using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;
using UnityEditor.SceneManagement;

[ExecuteInEditMode]
public class EditorSaveScript : MonoBehaviour {

    // Use this for initialization
    
    public int TimeTillSave = 1000;
    private int SaveTime = 1000;

    
    void Awake ()
    {
        //SaveTime = TimeTillSave;
	}

    // Update is called once per frame
    void Update()
    {
        // print("You Changed Something");


       
        if (!Application.isPlaying)
        {

            TimeTillSave -= 1;
            if (TimeTillSave <= 0)
            {

                EditorSceneManager.SaveCurrentModifiedScenesIfUserWantsTo();
                TimeTillSave = SaveTime;
            }

            
        }
    }
}
