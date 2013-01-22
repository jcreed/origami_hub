class Origami < ActiveRecord::Base
	validates_presence_of :name

  attr_accessible :artist, :name
  
# has_attached_file :document,
#	:path => ':rails_root/'
  has_many :orders, :dependent => :destroy
  has_one :manufacturer

  scope :is_name, lambda {|name| where('origamis.name < ?', name).order('name') unless name.nil?}

  def self.is_after_davis
  	all :conditions => ["name >= 'Davis'"]
  end
end
