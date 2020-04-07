class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.references :guest, null: false, foreign_key: true
      t.references :property, null: false, foreign_key: true
      t.boolean :confirmed
      t.string :startDate
      t.string :endDate

      t.timestamps
    end
  end
end
