class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.references :users, null: false, foreign_key: true
      t.references :puzzles, null: false, foreign_key: true

      t.timestamps
    end
  end
end
