require 'spec_helper'

describe OrdersController do
	before do 
		@origami = Origami.create!(:name => 'Hawk')
	end
		
	describe 'New' do
		it 'Creates a new origami order' do
			@ocount = Order.count
			get :new, :id => @origami.id
			@order = @origami.orders.create(:itemdesc => @origami.name, :quantity => 1, :date => Time.now)
			response.should be_success
			(Order.count - @ocount).should eq(1)
			redirect_to origami_path(@origami)
		end

	end

end
