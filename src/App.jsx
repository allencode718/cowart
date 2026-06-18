import { Tldraw } from 'tldraw'
import 'tldraw/tldraw.css'

export default function App() {
  return (
    <main className="cowart-canvas" aria-label="Cowart infinite canvas">
      <Tldraw persistenceKey="cowart-canvas" inferDarkMode />
    </main>
  )
}
