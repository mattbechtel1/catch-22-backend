class GamesController < ApplicationController
    def index
        games = Game.all
        render json: GameSerializer.new(games).to_serialized_json
    end

    def show
        game = Game.find(params[:id])
        render json: GameSerializer.new(game).to_serialized_json
    end

    private

    def games_params
        params.require(:game).permit(:name, :dayCount, :money, :sanity, :flown, :goal, :soundOn, :timings)
    end

end
