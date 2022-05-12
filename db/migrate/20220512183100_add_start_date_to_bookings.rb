class AddStartDateToBookings < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :start_date, :datetime
  end
end
