class GamesController < ApplicationController
  before_action :set_game, only: %i[ show ]

  # GET /games
  def index
    @games = Game.all

    render json: @games
  end

  # GET /games/1
  def show
    render json: @games
  end

  # POST /games
  def create
    @games = Game.new(game_params)

    if @game.save
      render json: @game, status: :created, game: @game
    else
      render json: @game.errors, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game
      @game = Game.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def game_params
      params.require(:game).permit(:name)
    end
end
