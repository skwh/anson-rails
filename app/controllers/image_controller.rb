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
		project_id = params[:p_id]
		@image = Image.create(project_id)
		if @image.save
			render text: "create_success"
		else
			render text: "create_error"
		end
	end

	def destroy
		@image = Image.find_by_id(params[:id])
		if @image.destroy
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
