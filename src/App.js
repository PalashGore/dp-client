import React from 'react';
import './App.css';
import axios from 'axios';

const axiosInstance = axios.create({
  baseURL: process.env.API_URL,
  withCredentials: false,
});


const sendReq = async () =>  {
  console.log(`This is sendReq`);
  const result = await axiosInstance.get('/response');
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
