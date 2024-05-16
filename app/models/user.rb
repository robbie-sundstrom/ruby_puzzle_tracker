class User < ActiveRecord::Base
    has_many :puzzle_times
  end
  