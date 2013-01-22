class CreateManufacturers < ActiveRecord::Migration
  def change
    create_table :manufacturers do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zipcode
      t.datetime :dateadded
      t.integer :manuid

      t.references :order
      t.timestamps
    end

    add_index :manufacturers, :order_id
  end
end
