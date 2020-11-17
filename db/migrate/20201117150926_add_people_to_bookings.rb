class AddPeopleToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :people, :integer
  end
end
