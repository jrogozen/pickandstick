class Team < ActiveRecord::Base
  has_many :matchups, foreign_key: "home_team_id"
  has_many :matchups, foreign_key: "away_team_id"
  has_many :matchups, foreign_key: "winner"
  has_many :picks
end
