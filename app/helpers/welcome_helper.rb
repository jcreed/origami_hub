module WelcomeHelper
	def link_home
		link_to 'Sample Log', {:action => 'index', :controller => 'welcome'} 
	end

	def orig_name_desc
		Origami.order('name desc')
	end
end
