class LeaderboardsController < ApplicationController
  before_action :set_leaderboard, only: [:show, :update, :destroy]

  # GET /leaderboards
  def index
    @leaderboards = Leaderboard.all

    render json: @leaderboards
  end

  # GET /leaderboards/1
  def show
    render json: @leaderboard
  end

  # POST /leaderboards
  def create
    @leaderboard = Leaderboard.new(leaderboard_params)

    if @leaderboard.save
      render json: @leaderboard, status: :created, location: @leaderboard
    else
      render json: @leaderboard.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /leaderboards/1
  def update
    if @leaderboard.update(leaderboard_params)
      render json: @leaderboard
    else
      render json: @leaderboard.errors, status: :unprocessable_entity
    end
  end

  # DELETE /leaderboards/1
  def destroy
    @leaderboard.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_leaderboard
      @leaderboard = Leaderboard.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def leaderboard_params
      params.fetch(:leaderboard, {})
    end
end
