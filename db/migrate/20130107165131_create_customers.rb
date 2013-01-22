class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zipcode
      t.datetime :dateadded
      t.integer :customerid
     
      t.references :order
      t.timestamps
    end
  end
end
