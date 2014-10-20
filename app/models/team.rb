class Team < ActiveRecord::Base
  has_many :matchups, foreign_key: "winner"
  has_many :picks
  has_many :matchup_teams
end
