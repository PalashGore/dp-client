import React from 'react';
import './App.css';
import axios from 'axios';



const sendReq = async () =>  {
  const axiosInstance = axios.create({
    baseURL: process.env.API_URL,
    withCredentials: false,
  });
  console.log(`API URL: ${process.env.API_URL}`);
  const url = `${process.env.API_URL}/resAPI_URLe`;
  const result1 = await axiosAPI_URL(url);
  console.log(`Result 1: ${result1}`);
  const result2 = await axiosInstance.get('/response');
  console.log(`REsult 2: ${result2}`);
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
