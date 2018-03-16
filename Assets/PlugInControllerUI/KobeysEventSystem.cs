using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using XInputDotNetPure;
using UnityEngine.UI;
public class KobeysEventSystem : MonoBehaviour {

    PlayerIndex pIdx = PlayerIndex.One;
    GamePadState state;
    GamePadState prevState;
    Button first;
    public Button firstSelectedButton;
    Selectable selectable;

    int downCount = 0;
    public bool getButtonDown()
    {

        if (prevState.Buttons.A == ButtonState.Pressed && state.Buttons.A == ButtonState.Released)
        {
            downCount++;
            if (downCount > 1)
            {
                return false;
            }
            return true;
        }
        downCount = 0;
        return false;
    }
    private void Awake()
    {
        first = firstSelectedButton;
    }
    // Use this for initialization
    void Start()
    {
        delayTime = inputDelay;
       
    }
    private void OnEnable()
    {
        delayTime = inputDelay;
        firstSelectedButton = first;
    }
    public float inputDelay = .3f;
    float delayTime;
    // Update is called once per frame
    void Update()
    {
        prevState = state;
        state = GamePad.GetState(pIdx);
        delayTime -= Time.deltaTime;
        if(prevState.ThumbSticks.Left.X == 0 && prevState.ThumbSticks.Left.Y == 0)
        {
            Selectable trySelect = firstSelectedButton.FindSelectable(new Vector3(state.ThumbSticks.Left.X, state.ThumbSticks.Left.Y));

            if (trySelect != null)
            {
                selectable = trySelect;
                if(selectable.GetComponent<Button>())
                {
                    firstSelectedButton = (Button)selectable;
                }
               
            }
        }
      

        if (getButtonDown() && delayTime <= 0)
        {
            delayTime = inputDelay;
            firstSelectedButton.onClick.Invoke();
        }

        firstSelectedButton.Select();
    }
}
