class User < ActiveRecord::Base
    has_many :puzzles
  end
  