class AddSlideshowAndSdataToStaticData < ActiveRecord::Migration
  def change
    add_column :static_data, :slideshow, :boolean, :default => false
    add_column :static_data, :sdata, :text, :default => ""
  end
end
