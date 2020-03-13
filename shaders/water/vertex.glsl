uniform mat4 projectionMatrix;
uniform mat4 modelViewMatrix;
uniform sampler2D water;

attribute vec3 position;

varying vec3 pos;


void main() {
  vec4 info = texture2D(water, position.xy * 0.5 + 0.5);
  pos = position.xzy;
  pos.y += info.r;

  gl_Position = projectionMatrix * modelViewMatrix * vec4(pos, 1.0);
}
