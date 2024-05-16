class PuzzleTime < ActiveRecord::Base
    has_one :puzzles, class_name: "Puzzle", foreign_key: "id"
    has_one :users, class_name: "User", foreign_key: "id"
  end
  