import { useState } from 'react'
import reactLogo from './assets/react.svg'
import viteLogo from '/vite.svg'
import './App.css'
import { Canvas } from '@react-three/fiber'
import { Bloom, EffectComposer } from '@react-three/postprocessing'
import Experience from './components/Experience'

function App() {
  const [count, setCount] = useState(0)

  return (
   <Canvas>
    <color attach="background" args={["#15151a"]}/>
    <Experience/>
    <EffectComposer>

    <Bloom
    mipmapBlur
    luminanceThreshold={1}
    intensity={1.42} 
    radius={0.72}/>
    </EffectComposer>
   </Canvas>
  )
}

export default App
