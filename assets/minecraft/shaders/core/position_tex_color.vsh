#version 150

in vec3 Position;
in vec2 UV0;
in vec4 Color;

uniform mat4 ModelViewMat;
uniform mat4 ProjMat;

out vec2 texCoord0;
out vec4 vertexColor;

void main() {
    gl_Position = ProjMat * ModelViewMat * vec4(Position, 1.0);

    texCoord0 = UV0;
    vertexColor = Color;

// If you're reading this, it means you're interested in how it works. fire overlay has a transparency level of 0.8980392. I made a simple condition: if the transparency is 0.8980392 then I make it equal to zero. that is, initially it is equal to 0.8980392 and I change it to zero.
    if(vertexColor.a == 0.8980392) {vertexColor.a = 0;}
}
