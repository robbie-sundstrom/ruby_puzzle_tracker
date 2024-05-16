class CreatePuzzles < ActiveRecord::Migration[7.1]
  def change
    create_table :puzzles do |t|
      t.string :title
      t.integer :piece_count

      t.timestamps
    end
  end
end
