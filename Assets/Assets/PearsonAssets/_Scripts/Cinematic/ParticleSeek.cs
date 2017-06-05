using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ParticleSeek : MonoBehaviour {
    public Transform target;
    public float force = 10;
    private ParticleSystem PS;
	// Use this for initialization
	void Start () {
        PS = GetComponent<ParticleSystem>();
	}
	
	void LateUpdate ()
    {
        ParticleSystem.Particle[] Particles = new ParticleSystem.Particle[PS.particleCount];
        PS.GetParticles(Particles);

        for(int i =0; i < Particles.Length; i++)
        {
            ParticleSystem.Particle p = Particles[i];


            Vector3 particleWorldPos = Vector3.zero ;

            if (PS.main.simulationSpace == ParticleSystemSimulationSpace.Local)
            {
                particleWorldPos = transform.TransformPoint(p.position);
            }
            else if(PS.main.simulationSpace == ParticleSystemSimulationSpace.Custom)
            {

                particleWorldPos = PS.main.customSimulationSpace.TransformPoint(p.position);
            }

            else if (PS.main.simulationSpace == ParticleSystemSimulationSpace.World)
            {
                particleWorldPos = p.position;
            }

            Vector3 directionToTarget = (target.position - particleWorldPos).normalized;

            Vector3 seekForce = directionToTarget * force * Time.deltaTime;

            p.velocity += seekForce;
            Particles[i] = p;
        }

        PS.SetParticles(Particles, Particles.Length);
	}
}
