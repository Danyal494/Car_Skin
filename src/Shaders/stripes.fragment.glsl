//  uniform float time;
//   uniform vec3 color;
  varying vec2 vUv;
uniform float uAlpha;
uniform float uMultiplier;
uniform vec3 uColorA;
uniform vec3 uColorB;
uniform float uTime;
  void main() {
   // Map vUv to RGB channels and set alpha to 1.0
//    float strength = vUv.y;
vec2 mulvUv = mod(vUv * uMultiplier ,1.0);
//    float strength = step(0.5,mulvUv.x) ;
   float strength = step(0.5,mod(mulvUv.x + uTime,1.0)) ;
    // gl_FragColor = vec4(vUv.x, vUv.y, 1.0, 1.0);
    // float alpha = 0.5;
    // vec3 mixColor = mix(uColorA,uColorB,strength);
    // vec3 mixColor = mix(uColorA,uColorB,mulvUv.y);
    vec3 mixColor = mix(uColorA,uColorB,step(0.5,mulvUv.y));
    // vec3 mixColor = mix(uColorA,uColorB,step(0.5,mod(vUv.y + uTime * uMultiplier / 2.0,1.0 )));
    //  vec3 mixColor = mix(uColorA,uColorB,step(0.5,mod(vUv.y * uMultiplier / 2.0,1.0 )));
    // gl_FragColor = vec4(vec3(strength), min(strength,uAlpha));
    gl_FragColor = vec4(mixColor, min(strength,uAlpha));
  }