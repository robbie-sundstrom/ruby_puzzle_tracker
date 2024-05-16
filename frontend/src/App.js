import "./App.css";
import axios from "axios";
import Puzzles from "./components/puzzles";
import { useEffect, useState } from "react";

const API_URL = "http://localhost:3000/api/v1/puzzles";

function getApiData() {
  return axios.get(API_URL).then((response) => response.data);
}

function App() {
  const [puzzles, setPuzzles] = useState([]);

  useEffect(() => {
    let mounted = true;
    getApiData().then((items) => {
      if (mounted) {
        setPuzzles(items);
      }
    });

    return () => (mounted = false);
  }, []);

  return (
    <div className="App">
      <header className="App-header">Hello</header>
      <Puzzles puzzles={puzzles} />
    </div>
  );
}

export default App;
