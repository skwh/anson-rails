class MakeImagesAndVideosDefaultEmpty < ActiveRecord::Migration
  def change
  	change_column :projects, :images, :text, :default => ""
  	change_column :projects, :videos, :text, :default => ""
  end
end
