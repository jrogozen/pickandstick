class Matchup < ActiveRecord::Base
  belongs_to :winner, class_name: "Team"
  has_many :picks
  has_many :matchup_teams
  has_many :teams, through: :matchup_teams
end
