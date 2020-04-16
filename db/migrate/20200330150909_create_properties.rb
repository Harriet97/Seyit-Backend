class CreateProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :properties do |t|
      t.string :name
      t.references :host, null: false, foreign_key: true
      t.string :postcode
      t.string :location
      t.float :long
      t.float :lat
      t.integer :price
      t.integer :sleeps
      t.integer :bedrooms
      t.integer :bathrooms
      t.boolean :balcony
      t.boolean :washing_machine
      t.boolean :kettle
      t.boolean :coffee_machine
      t.boolean :fridge
      t.boolean :microwave
      t.boolean :kitchenware
      t.boolean :elevator
      t.boolean :living_room
      t.boolean :shower
      t.boolean :bathtub
      t.boolean :hairdryer
      t.boolean :iron
      t.boolean :hoover
      t.boolean :mop
      t.boolean :bedding
      t.boolean :tv
      t.boolean :wifi
      t.text :images, array: true, default: []
      


      t.timestamps
    end
  end
end
