class CreatePasswords < ActiveRecord::Migration
  def change
    create_table :passwords do |t|
    	t.string :password_digest
    end
  end
end
