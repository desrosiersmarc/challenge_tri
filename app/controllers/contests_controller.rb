class ContestsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @contests = Contest.all

  end

end
