class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :username
      t.integer :stars
      t.text :comment
      t.references :puzzle, null: false, foreign_key: true

      t.timestamps
    end
  end
end
