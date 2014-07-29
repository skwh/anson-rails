class RemoveImagesFromProjects < ActiveRecord::Migration
  def change
  	remove_column :projects, :images
  end
end
