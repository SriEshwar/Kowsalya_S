import logo from './logo.svg';
import Hello from './hello.js';
import Welcome from './Welcome.js';
import './App.css';

function App() {
  return (
    <div>
      <Hello/>
      <Welcome name='Kowsalya' location='Coimbatore'>React Learning</Welcome>
    </div>
  );
}

export default App;
