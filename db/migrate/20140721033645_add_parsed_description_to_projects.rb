class AddParsedDescriptionToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :parsed_description, :text, :default => ""
  end
end
