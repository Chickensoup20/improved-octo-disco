#version 130

uniform sampler2D DiffuseSampler;
in vec2 texCoord;
out vec4 fragColor;

void main(){
    vec4 c=texture(DiffuseSampler,texCoord);
    float l=dot(c,vec4(.28,.54,.18,0));
    fragColor=mix(vec4(l),c,2.0);
}