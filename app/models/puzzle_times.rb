class PuzzleTime < ActiveRecord::Base
    belongs_to :puzzles
    belongs_to :users
  end
  