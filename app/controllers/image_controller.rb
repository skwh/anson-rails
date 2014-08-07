class ImageController < ApplicationController
	def update
		@image = Image.find_by_id(params[:id])
		if @image.update_attributes(image_params)
			render text: "update_success"
		else
			render text: "update_error"
		end
	end

	def create
		p_id = params[:p_id]
		@image = Image.create(project_id:p_id)
		@project = Project.find_by_id(p_id).images.append(@image)
		if @image.save
			render text: "create_success"
		else
			render text: "create_error"
		end
	end

	def destroy
		@image = Image.find_by_id(params[:id])
		@project = Project.find_by_id(@image.project_id)
		if @image.destroy
			#make sure to update the project
			@project.images.delete(@image)
			render text: "destroy_success"
		else
			render text: "destroy_error"
		end
	end

	private
		def image_params
			params.requre(:image).permit(:thumbnail,:large,:project_id)
		end

end
