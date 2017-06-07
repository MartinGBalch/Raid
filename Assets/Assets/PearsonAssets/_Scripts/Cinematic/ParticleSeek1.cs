
using UnityEngine;
//[RequireComponent(typeof(ParticleSystem))]
public class ParticleSeek1 : MonoBehaviour {
    public Transform target;
    public float force = 10;
    private ParticleSystem PS;
    float DT;
    ParticleSystem.Particle[] Particles;

    ParticleSystem.MainModule PSMainModule;
    // Use this for initialization
    void Start ()
    {
        PS = GetComponent<ParticleSystem>();
        PSMainModule = PS.main;

    }
	
	void LateUpdate ()
    {
        int maxPartincles = PSMainModule.maxParticles;

        if (Particles == null || Particles.Length < maxPartincles)
        {
            Particles = new ParticleSystem.Particle[maxPartincles];
        }
        if (Particles != null)
        {
            PS.GetParticles(Particles);
        }
        float forceDeltaTime = force * Time.deltaTime;



        Vector3 targetPosition = Vector3.zero;
       
        

        if (PSMainModule.simulationSpace == ParticleSystemSimulationSpace.Local)
        {
            targetPosition = transform.InverseTransformPoint(target.position);
        }
        else if (PSMainModule.simulationSpace == ParticleSystemSimulationSpace.Custom)
        {

            targetPosition = PSMainModule.customSimulationSpace.InverseTransformPoint(target.position);
        }

        else if (PSMainModule.simulationSpace == ParticleSystemSimulationSpace.World)
        {
            if (target != null)
            {
                targetPosition = target.position;
            }
        }

        for (int i =0; i < Particles.Length; i++)
        {
            


           

            Vector3 directionToTarget = Vector3.Normalize(targetPosition - Particles[i].position);

            Vector3 seekForce = directionToTarget * forceDeltaTime;

            Particles[i].velocity += seekForce;
            if(Vector3.Distance(Particles[i].position,target.position) <= .5f)
            {
               Particles[i].startSize = 0;
            }
        }

        PS.SetParticles(Particles, Particles.Length);
	}
}
