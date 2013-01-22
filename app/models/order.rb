class Order < ActiveRecord::Base
  attr_accessible :date, :itemdesc, :itemno, :manufacturer, :quantity

  belongs_to :origami
  has_one :customer

end
