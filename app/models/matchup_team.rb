class MatchupTeam < ActiveRecord::Base
  belongs_to :matchup
  belongs_to :team
end
