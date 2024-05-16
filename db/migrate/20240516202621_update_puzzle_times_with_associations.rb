class UpdatePuzzleTimesWithAssociations < ActiveRecord::Migration[7.1]
  def change

    # Update puzzle_times
    change_table :puzzle_times do |t|
      add_reference :puzzle_times, :user, foreign_key: true
    end

  end
end
