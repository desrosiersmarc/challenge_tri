class ResultsController < ApplicationController
  def index
    @results = Result.all
  end

  def new
    @result = Result.new
    @results = Result.where(contest_id: 96)
  end

  private
  def method_name

  end
end
