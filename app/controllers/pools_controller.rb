class PoolsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_league, except: [:show]

  def show
    @pool = Pool.find(params[:id])
  end

  def new
    @pool = current_user.pools.new(league_id: @league.id)
  end

  def create
    @pool = current_user.pools.new(pool_params)
    if @pool.save
      redirect_to pool_path(@pool)
    else
      render :new
    end
  end

  private

  def pool_params
    params
      .require(:pool)
      .permit(:name, :bet_cut_off_time, :end_time, :league_id)
  end

  def set_league
    league_id = params[:league_id] || params[:pool][:league_id]
    @league = League.find(league_id)
  end
end
