//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	//Variável para a minha cor
	vec4 cor     = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	//Deixando a cor branca
	cor.rgb      = vec3(1);
    gl_FragColor = cor;
}
