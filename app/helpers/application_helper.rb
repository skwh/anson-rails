module ApplicationHelper

	def full_title(page_title)
		base_title = "Anson Adams"
		if page_title.empty?
			base_title
		else
			"#{base_title} | #{page_title}"
		end
	end

	def current_page(fullpath) 
		if fullpath == "/projects"
			1
		elsif fullpath == "/about"
			2
		elsif fullpath == "/design"
			3
		elsif fullpath == "/art"
			4
		elsif fullpath == "/effects"
			5
		else
			6
		end
	end
end
