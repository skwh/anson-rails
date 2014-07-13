class CreateStaticData < ActiveRecord::Migration
  def change
    create_table :static_data do |t|
      t.text :content
      t.string :owner_page

      t.timestamps
    end
  end
end
