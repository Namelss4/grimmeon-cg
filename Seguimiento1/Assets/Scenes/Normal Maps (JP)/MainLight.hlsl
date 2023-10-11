#ifndef MAIN_LIGHT_INCLUDED
#define MAIN_LIGHT_INCLUDED

//#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
//#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"

void GetMainLight_float(float3 PositionWorldSpace, out float3 LightDirection, out float3 LightColor)
{
	LightDirection = float3(1,1,-1);
	LightColor = 1;

	#ifdef UNIVERSAL_LIGHTING_INCLUDED
	Light light = GetMainLight();
	LightDirection = light.direction;
	LightColor = light.color;
	#endif
}

void GetAdditionalLight_float(int LightIndex, float3 PositionWorldSpace, out float3 LightDirection, out float3 LightColor)
{
	LightDirection = float3(1,1,-1);
	LightColor = 0;

	#ifdef UNIVERSAL_LIGHTING_INCLUDED
	Light light = GetAdditionalLight(LightIndex, PositionWorldSpace);
	LightDirection = light.direction;
	LightColor = light.color;
	#endif
}

void HalfLambertBlinnPhongAdditionalLights_float(float3 NormalVectorWorldSpace, float3 ViewVectorWorldSpace, float3 PositionWorldSpace, out float3 Lighting)
{
	Lighting = 0;

	#ifdef UNIVERSAL_LIGHTING_INCLUDED
	Light currentLight;

	[unroll(8)]
	for(int i = 0; i < GetAdditionalLightsCount(); i++)
	{
		currentLight = GetAdditionalLight(i, PositionWorldSpace);
		float3 halfLambert = (dot(NormalVectorWorldSpace, normalize(currentLight.direction)) * 0.5 + 0.5) * currentLight.color;
		float3 h = normalize(ViewVectorWorldSpace + currentLight.direction);
		float3 blinnPhong = pow(saturate(dot(NormalVectorWorldSpace, h)), 50) * currentLight.color;
		Lighting += (halfLambert + blinnPhong) * currentLight.distanceAttenuation;
	}
	#endif
}

#endif