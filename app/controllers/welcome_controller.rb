#require "prawn"
class WelcomeController < ApplicationController
  
  def index
  	@origami = Origami.new
  end
end
