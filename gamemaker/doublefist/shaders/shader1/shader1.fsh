//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform sampler2D s_destination;

void main()
{
	
    gl_FragColor = v_vColour * texture2D( s_destination, v_vTexcoord );
}
