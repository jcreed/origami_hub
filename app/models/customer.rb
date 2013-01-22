class Customer < ActiveRecord::Base
  attr_accessible :address, :city, :customerid, :dateadded, :name, :references, :state, :zipcode
  has_many :orders
end
