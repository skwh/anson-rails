class StaticPagesController < ApplicationController
	include ProjectHelper, StaticPagesHelper, ApplicationHelper

	def home
		locals data: StaticData.find_by_owner_page("home")
	end

	def contact
		locals data: StaticData.find_by_owner_page("contact")
	end

	def about
		locals data: StaticData.find_by_owner_page("about")
	end

	def login
	end

	def edit
		@data = StaticData.find_by_id(params[:id])
	end

	def update
		@data = StaticData.find_by_id(params[:id])
		@data.parsed_content = markdown(params[:static_data][:content])
		if @data.update_attributes(static_data_params)
			redirect_to get_static_data_url(@data.owner_page)
		else
			render 'edit'
		end
	end

	def static_path
		@data = StaticData.find_by_id(params[:id])
		redirect_to get_static_data_url(@data.owner_page)
	end

	private
		def static_data_params
			params.require(:static_data).permit(:content, :parsed_content, :slideshow, :sdata)
		end
end
