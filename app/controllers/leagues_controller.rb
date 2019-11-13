class LeaguesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @leagues = League.all
  end
end
