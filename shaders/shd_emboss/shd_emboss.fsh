varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec2 resolution;
uniform float strength;
uniform float size;

void main() {
    vec2 texel = 1.0 / resolution * size;
    
    vec3 color = vec3(0.5, 0.5, 0.5);
    color -= texture2D(gm_BaseTexture, v_vTexcoord - texel).rgb * strength;
    color += texture2D(gm_BaseTexture, v_vTexcoord + texel).rgb * strength;
    
    color = vec3((color.r + color.g + color.b) / 3.0);
    
    gl_FragColor.rgb = color;
    
    
    gl_FragColor.a = texture2D(gm_BaseTexture, v_vTexcoord).a;
}
