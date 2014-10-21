class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string :name
      t.string :password_salt
      t.string :password_hash
      t.string :last_name

      t.timestamps
    end
  end
end
