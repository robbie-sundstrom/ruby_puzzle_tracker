class CreatePuzzleTimes < ActiveRecord::Migration[7.1]
  def change
    create_table :puzzle_times do |t|
      t.integer :time
      t.references :puzzles, null: false, foreign_key: true

      t.timestamps
    end
  end
end
