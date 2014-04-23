class ProjectController < ApplicationController

	def index
		@design = Project.where(section:"design")
		@art = Project.where(section:"art")
		@effects = Project.where(section:"effects")
	end

	def design
		@design = Project.where(section:"design")
	end

	def art
		@art = Project.where(section:"art")
	end

	def effects
		@effects = Project.where(section:"effects")
	end

	def show
		@project = Project.find(params[:id])
	end

	def new
		@project = Project.new
	end

end
