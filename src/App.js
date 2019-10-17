import React from 'react';
import './App.css';
import axios from 'axios';

const sendReq = async () =>  {
  console.log(`This is sendReq`);
  const result = await axios.get('/response');
  console.log(result);
}


function App() {
  return (
    <div className="App">
      <header className="App-header">
        <button onClick={sendReq}> Talk to Server </button>
      </header>
    </div>
  );
}

export default App;
