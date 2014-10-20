class MatchupsController < ApplicationController

  def index
    matchups_with_teams = []

    matchups = Matchup.all

    count = 0
    matchups.each do |match|
      count = {}

      count[match.id] = match.teams
      matchups_with_teams << count

      count += 1
    end

    binding.pry

    render json: matchusps_with_teams
  end

  def create
    matchup = Matchup.new

    matchup.teams << Team.find(params["home_team"]["id"])
    matchup.teams << Team.find(params["away_team"]["id"])

    render json: matchup 
  end

end
