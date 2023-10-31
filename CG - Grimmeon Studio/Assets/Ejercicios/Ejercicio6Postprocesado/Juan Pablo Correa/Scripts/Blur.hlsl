#ifndef BLUR_
#define BLUR_

void GaussianBlur3x3_float(UnityTexture2D Tex, float2 Uv, UnitySamplerState Ss, float PixelOffset, float2 TextelSize, out float4 Result)
{
	float3 off = float3(1,0,-1) * PixelOffset;
	float3 gauss = float3(0.0625f, 0.125f, 0.25f);
	Result = SAMPLE_TEXTURE2D(Tex, Ss, Uv + off.zx * TextelSize) * gauss.x; //Pixel Arriba a la izquierda
	Result += SAMPLE_TEXTURE2D(Tex, Ss, Uv + off.yx * TextelSize) * gauss.y; //Pixel Arriba centro
	Result += SAMPLE_TEXTURE2D(Tex, Ss, Uv + off.xx * TextelSize) * gauss.x; //Pixel Arriba a la derecha
	Result += SAMPLE_TEXTURE2D(Tex, Ss, Uv + off.zy * TextelSize) * gauss.y; //Pixel izquierda centro
	Result += SAMPLE_TEXTURE2D(Tex, Ss, Uv) * gauss.z;			   //Pixel centro
	Result += SAMPLE_TEXTURE2D(Tex, Ss, Uv + off.xy * TextelSize) * gauss.y; //Pixel derecha centro
	Result += SAMPLE_TEXTURE2D(Tex, Ss, Uv + off.zz * TextelSize) * gauss.x; //Pixel Abajo a la izquierda
	Result += SAMPLE_TEXTURE2D(Tex, Ss, Uv + off.yz * TextelSize) * gauss.y; //Pixel Abajo centro
	Result += SAMPLE_TEXTURE2D(Tex, Ss, Uv + off.xz * TextelSize) * gauss.x; //Pixel Abajo a la derecha
}

void Sharpen1x1_float(UnityTexture2D Tex, float2 Uv, UnitySamplerState Ss, float PixelOffset, float2 TextelSize, out float4 Result)
{
	float3 off = float3(1,0,-1) * PixelOffset;
	Result = SAMPLE_TEXTURE2D(Tex, Ss, Uv + off.zx * TextelSize) * -1; //Pixel Arriba a la izquierda
	Result += SAMPLE_TEXTURE2D(Tex, Ss, Uv + off.yx * TextelSize) * -1; //Pixel Arriba centro
	Result += SAMPLE_TEXTURE2D(Tex, Ss, Uv + off.xx * TextelSize) * -1; //Pixel Arriba a la derecha
	Result += SAMPLE_TEXTURE2D(Tex, Ss, Uv + off.zy * TextelSize) * -1; //Pixel izquierda centro
	Result += SAMPLE_TEXTURE2D(Tex, Ss, Uv) * 9;			   //Pixel centro
	Result += SAMPLE_TEXTURE2D(Tex, Ss, Uv + off.xy * TextelSize) * -1; //Pixel derecha centro
	Result += SAMPLE_TEXTURE2D(Tex, Ss, Uv + off.zz * TextelSize) * -1; //Pixel Abajo a la izquierda
	Result += SAMPLE_TEXTURE2D(Tex, Ss, Uv + off.yz * TextelSize) * -1; //Pixel Abajo centro
	Result += SAMPLE_TEXTURE2D(Tex, Ss, Uv + off.xz * TextelSize) * -1; //Pixel Abajo a la derecha

}

#endif