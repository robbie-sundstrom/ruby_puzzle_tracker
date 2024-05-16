class Puzzle < ActiveRecord::Base
    has_one :brand
    has_many :puzzle_times
  end
  