class AddIndexToCustomer < ActiveRecord::Migration
  def change
  end

  add_index :customers, :order_id
end
