class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.date :start_date
      t.date :end_date
      t.integer :full_price
      t.references :users, foreign_key: true
      t.references :offers, foreign_key: true

      t.timestamps
    end
  end
end
