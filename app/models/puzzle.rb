class Puzzle < ActiveRecord::Base
    belongs_to :brands, class_name: "Brand", foreign_key: "brand_id"
    has_many :puzzle_times
  end
  