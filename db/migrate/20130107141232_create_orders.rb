class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :itemdesc
      t.integer :quantity
      t.datetime :date
      t.string :manufacturer
      t.integer :itemno

      t.references :origami
      t.timestamps
    end

    add_index :orders, :origami_id
  end

end
