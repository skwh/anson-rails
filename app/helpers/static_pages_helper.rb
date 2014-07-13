module StaticPagesHelper
	def get_static_data_page(owner_page)
		if owner_page == "home"
			'home'
		elsif owner_page == "about"
			'about'
		elsif owner_page == "contact"
			'contact'
		end
	end

	def get_static_data_url(owner_page)
		if owner_page == "home"
			'/'
		elsif owner_page == "about"
			'/about'
		elsif owner_page == "contact"
			'/contact'
		end
	end
			
end
