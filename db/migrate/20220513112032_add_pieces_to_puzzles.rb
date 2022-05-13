class AddPiecesToPuzzles < ActiveRecord::Migration[6.1]
  def change
    add_column :puzzles, :pieces, :numeric
  end
end
