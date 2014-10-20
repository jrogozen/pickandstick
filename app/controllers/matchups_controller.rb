class MatchupsController < ApplicationController

  def index

    Matchup.all

    matchups = Matchup.all.includes(:teams).map do |matchup|
      matchup.teams
    end

    matchups = matchups.select{|x| !x.empty?}

    render json: matchups

  end

  def create
    binding.pry
    matchup = Matchup.create({week: params["week"]})

    matchup.teams << Team.find(params["home_team"]["id"])
    matchup.teams << Team.find(params["away_team"]["id"])

    render json: matchup 
  end

  def get_matches_based_on_week(week)
    params["week"]
  end

end
