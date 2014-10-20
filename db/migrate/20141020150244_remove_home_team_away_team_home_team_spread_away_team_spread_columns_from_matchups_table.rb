class RemoveHomeTeamAwayTeamHomeTeamSpreadAwayTeamSpreadColumnsFromMatchupsTable < ActiveRecord::Migration
  def change
    remove_column :matchups, :home_team_id, :integer
    remove_column :matchups, :away_team_id, :integer
    remove_column :matchups, :home_team_spread, :integer
    remove_column :matchups, :away_team_spread, :integer
  end
end
