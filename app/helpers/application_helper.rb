require 'digest/sha1'

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

	def check_password(pw)
		master_pw_digest = Password.first.password_digest.to_s
		given_pw_digest = Digest::SHA1.hexdigest pw.to_s
		if given_pw_digest == master_pw_digest
			true
		else
			false
		end
	end

	def store_location
    	session[:return_to] = request.url
  	end
end
