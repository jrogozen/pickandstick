class CreatePicks < ActiveRecord::Migration
  def change
    create_table :picks do |t|
      t.references :user, index: true
      t.references :matchup, index: true
      t.references :team, index: true
      t.boolean :outcome

      t.timestamps
    end
  end
end
