class UpdatePuzzlesWithAssociations < ActiveRecord::Migration[7.1]
  def change

    # Update puzzles table
    change_table :puzzles do |t|
      add_reference :puzzles, :brand, foreign_key: true
    end

    # Update puzzle_times
    change_table :puzzle_times do |t|
      add_reference :puzzle_times, :puzzle, foreign_key: true
    end

  end
end
