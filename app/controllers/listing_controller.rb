class ListingController < ApplicationController
  def index
  		#@origami_first = Origami.first
  		#@origami_last = Origami.last
  		@origamis = Origami.find(:all, :order => "name")
  end
end
