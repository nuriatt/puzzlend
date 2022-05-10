class CreatePuzzles < ActiveRecord::Migration[6.1]
  def change
    create_table :puzzles do |t|
      t.string :name
      t.text :description
      t.decimal :price

      t.timestamps
    end
  end
end
