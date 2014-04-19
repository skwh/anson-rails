class ProjectController < ApplicationController

	def index
		@design = Project.where(section:"design")
		@art = Project.where(section:"art")
		@effects = Project.where(section:"effects")
	end

	def show
		@project = Project.find(params[:id])
	end

end
