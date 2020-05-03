class LeaguesController < ApplicationController
  before_action :authenticate_user!

  def show
    @league = League.find(params[:id])
  end

  def new
    @league = current_user.owned_leagues.new
  end

  def create
    @league = current_user.owned_leagues.new(league_params)
    if @league.save
      redirect_to @league
    else
      render :new
    end
  end

  private

  def league_params
    params.require(:league).permit(:name, :user_id)
  end
end
