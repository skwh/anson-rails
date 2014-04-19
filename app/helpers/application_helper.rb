module ApplicationHelper

	def full_title(page_title)
		base_title = "Fushion Digital Graphics"
		if page_title.empty?
			base_title
		else
			"#{base_title} | #{page_title}"
		end
	end

	def current_page(page_title)
		if page_title.empty?
			"large"
		else
			"small"
		end
	end
end
