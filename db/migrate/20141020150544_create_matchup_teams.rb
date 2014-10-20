class CreateMatchupTeams < ActiveRecord::Migration
  def change
    create_table :matchup_teams do |t|
      t.references :matchup, index: true
      t.references :team, index: true

      t.timestamps
    end
  end
end
