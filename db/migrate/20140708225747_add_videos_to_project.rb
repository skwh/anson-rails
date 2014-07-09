class AddVideosToProject < ActiveRecord::Migration
  def change
    add_column :projects, :videos, :string
  end
end
