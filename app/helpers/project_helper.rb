module ProjectHelper
	def begin_verification
		unless user_verified?
			store_location
			verify
		end
	end

	def verify
		if params[:password].nil?
			redirect_to '/login'
		else
			if check_password(params[:password])
				session[:verified] = true
				redirect_to session[:return_to]
			else
				redirect_to '/login'
			end
		end
	end

	def user_verified?
		session[:verified]
	end
end
