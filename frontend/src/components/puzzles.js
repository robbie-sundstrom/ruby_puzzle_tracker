import React from "react";

function Puzzles(props) {
  return (
    <div>
      <h1> These are puzzles we have available.</h1>
      {props.puzzles.map((puzzle) => {
        return (
          <div key={puzzle.id}>
            <h2>{puzzle.title}</h2>
            <h3>{puzzle.piece_count} Pieces</h3>
          </div>
        );
      })}
    </div>
  );
}

export default Puzzles;
