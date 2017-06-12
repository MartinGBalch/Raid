using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraShake : MonoBehaviour
{
    const float maxAngle = 10;
    public Properties testProperties, TakeDamageProperties, AttackProperties, ShootProperties, SlamProperties, SuperProperties,LightProperties, BossRaiseProperties,BoulderFallProperties,GroundFallProperties,superlaserProperties;
    float DT;

    IEnumerator CurrentShakeCoroutine;
   
    private void LateUpdate()
    {
        DT = Time.deltaTime;
        if(Input.GetKeyDown(KeyCode.T))
        {
            StartShake(testProperties);
        }
    }

    public void StartShake(Properties properties)
    {
        if(CurrentShakeCoroutine != null)
        {
            StopCoroutine(CurrentShakeCoroutine);
        }


        CurrentShakeCoroutine = Shake(properties);
        StartCoroutine(Shake(properties));
    }

    public IEnumerator Shake(Properties properties)
    {
        float completionPercent = 0;
        float movePercent = 0;

        float angle_radians = properties.angle * Mathf.Deg2Rad - Mathf.PI;
        Vector3 previousWaypoint = Vector3.zero;
        Vector3 currentWaypoint = Vector3.zero;
        float moveDist = 0;
        float speed = 0;

        Quaternion targetRot = Quaternion.identity;
        Quaternion PreviousRot = Quaternion.identity;

        do
        {
            if (movePercent >= 1 || completionPercent == 0)
            {
                float dampingFactor = DampingCurve(completionPercent, properties.dampingPercent);
                float noiseAngle = (Random.value - .5f) * Mathf.PI;
                angle_radians += Mathf.PI + noiseAngle * properties.noisePercent;
                currentWaypoint = new Vector3(Mathf.Cos(angle_radians), Mathf.Sin(angle_radians)) * properties.strength * dampingFactor;
                previousWaypoint = transform.localPosition;
                moveDist = Vector3.Distance(currentWaypoint, previousWaypoint);

                targetRot = Quaternion.Euler(new Vector3(currentWaypoint.y, currentWaypoint.x).normalized * properties.RotationPercent * dampingFactor * maxAngle);
                PreviousRot = transform.localRotation;

                speed = Mathf.Lerp(properties.minSpeed, properties.maxSpeed, dampingFactor);

                movePercent = 0;
            }

            completionPercent += DT / properties.duration;
            movePercent += DT / moveDist * speed;
            transform.localPosition = Vector3.Lerp(previousWaypoint, currentWaypoint, movePercent);
            transform.localRotation = Quaternion.Slerp(PreviousRot, targetRot, movePercent);

            yield return null;
        } while (moveDist > 0);

    }

    float DampingCurve ( float x, float DampPercent)
    {
        x = Mathf.Clamp01(x);
        float a = Mathf.Lerp(2, .25f, DampPercent);
        float b = 1 - Mathf.Pow(x, a);
        return b * b * b;
    }

    [System.Serializable]
    public class Properties
    {
        public float angle;
        public float strength;
        public float maxSpeed;
        public float minSpeed;
      
        public float speed;
        public float duration;
        [Range(0,1)]
        public float noisePercent;
        [Range(0, 1)]
        public float dampingPercent;
        [Range(0, 1)]
        public float RotationPercent;

    }
}
