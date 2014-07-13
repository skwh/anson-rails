class AddParsedContentToStaticData < ActiveRecord::Migration
  def change
    add_column :static_data, :parsed_content, :text, :default => ""
  end
end
