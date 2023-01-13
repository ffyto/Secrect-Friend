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
    @game = Game.new(game_params)

    if @game.save
      @workers = []
      @game.couples.each do |c|
        @worker_1 = Worker.find(c.worker_1_id)
        @worker_2 = Worker.find(c.worker_2_id)
        @workers.push({couple_id: c.id, player_1: @worker_1, player_2: @worker_2})
      end
      @game
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
      params.require(:game).permit(:year_game)
    end
end
