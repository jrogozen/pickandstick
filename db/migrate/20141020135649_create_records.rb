class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.references :user, index: true
      t.integer :week
      t.integer :wins
      t.integer :losses

      t.timestamps
    end
  end
end
