class LandingsController < ApplicationController
  before_action :authenticate_user! , :except => [ :index ]
  def index
    @title = 'HelaPal'
  end
end