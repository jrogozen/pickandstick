class CreateMatchups < ActiveRecord::Migration
  def change
    create_table :matchups do |t|
      t.references :home_team, index: true
      t.references :away_team, index: true
      t.integer :home_team_spread
      t.integer :away_team_spread
      t.references :winner, index: true

      t.timestamps
    end
  end
end
