class MatchupsController < ApplicationController

  def index
  end

  def create
    
    matchup = Matchup.new(home_team_id: params["home_team"]["id"], away_team_id: params["away_team"]["id"], home_team_spread: params["home_team_spread"], away_team_spread: params["away_team_spread"])

    if matchup.valid?
      matchup.save!
    end

    render json: matchup 
  end

  private

  def matchup_params
    # params.require("matchup").permit("home_team", "away_team", "home_team_spread", "away_team_spread").symbolize_keys
  end

end
