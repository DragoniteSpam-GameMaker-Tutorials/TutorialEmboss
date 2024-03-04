varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec2 resolution;
uniform float strength;
uniform float size;

void main() {
    gl_FragColor = texture2D(gm_BaseTexture, v_vTexcoord);
}
