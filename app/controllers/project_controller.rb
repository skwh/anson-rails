class ProjectController < ApplicationController
	include ProjectHelper, ApplicationHelper
	before_action :begin_verification, only: [:new, :edit, :destroy]

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

	def create
		@project = Project.create(project_params)
		if @project.save
			flash[:sucess] = "Project Submitted."
			redirect_to "/#{@project.section}"
		else
			render "new"
		end
	end

	def edit
		@project = Project.find(params[:id])
	end

	def update
		@project = Project.find(params[:id])
		if @project.update_attributes(project_params)
			redirect_to @project
		else
			render 'edit'
		end
	end

	def destroy
		@project = Project.find(params[:id])
		@project.destroy
	end

	private
		def project_params
			params.require(:project).permit(:title, :description, :section, :subtitle)
		end
end