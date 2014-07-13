class ProjectController < ApplicationController
	include ProjectHelper, ApplicationHelper
	before_action :begin_verification, only: [:new, :edit, :destroy, :create, :update]

	def design
		@design = Project.where(section:"design").order(updated_at: :desc)
	end

	def art
		@art = Project.where(section:"art").order(updated_at: :desc)
	end

	def effects
		@effects = Project.where(section:"effects").order(updated_at: :desc)
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
			redirect_to "/#{@project.section}"
		else
			render 'edit'
		end
	end

	def destroy
		@project = Project.find(params[:id])
		project_section = @project.section
		@project.destroy
		redirect_to "/#{project_section}"
	end

	private
		def project_params
			params.require(:project).permit(:title, :description, :section, :subtitle, :images, :videos)
		end
end