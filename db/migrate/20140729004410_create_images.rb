class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :large
      t.string :thumbnail

      t.timestamps
    end
  end
end
