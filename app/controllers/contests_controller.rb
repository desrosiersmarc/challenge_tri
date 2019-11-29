class ContestsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :find_contest, only: [:edit, :update]

  def index
    @contests = Contest.where(league_id: current_user.league_id)
  end

  def new
    @contest = Contest.new
  end

  def create
    @contest = Contest.new(contest_params)
    if @contest.save
      redirect_to contests_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @contest.update(contest_params)
    if @contest.save
      redirect_to contests_path
    else
      render :edit
    end
  end

private
  def contest_params
    params.require(:contest).permit(
      :name,
      :location,
      :date,
      :user_id,
      :league_id,
      format_ids:[])
  end

  def find_contest
    @contest = Contest.find(params[:id])
  end

end
