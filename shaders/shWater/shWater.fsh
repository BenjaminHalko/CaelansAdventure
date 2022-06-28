varying vec2 v_vPosition;
varying vec4 v_vColour;
varying vec2 v_vTexcoord;

uniform float Time;
vec2 Size = vec2(256,128);
vec2 wave = vec2(48,5);

void main()
{
    vec2 Coord = v_vTexcoord + vec2(cos((v_vPosition.y/wave.x+Time)*12.2831)*2.0,0)/Size;
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, Coord);
}