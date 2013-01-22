class Manufacturer < ActiveRecord::Base
  attr_accessible :address, :city, :dateadded, :manuid, :name, :state, :zipcode
  belongs_to :origami
end
