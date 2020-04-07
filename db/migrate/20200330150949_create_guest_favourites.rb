class CreateGuestFavourites < ActiveRecord::Migration[6.0]
  def change
    create_table :guest_favourites do |t|
      t.references :guest, null: false, foreign_key: true
      t.references :property, null: false, foreign_key: true

      t.timestamps
    end
  end
end
