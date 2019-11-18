class ClubsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @clubs = Club.all
  end
end
