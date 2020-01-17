class GamesController < ApplicationController
    def index
        games = Game.all
        render json: GameSerializer.new(games).to_serialized_json
    end

    def show
        game = Game.find(params[:id])
        render json: GameSerializer.new(game).to_serialized_json
    end

    def update
        game = Game.find(params[:id])
        game.update(games_params)
        game_partners = ActivePartner.where(game_id: params[:id])
                
        deletables = game_partners.select {|game_partner| params[:partner_ids].exclude?(game_partner.id)}
                
        deletables.each {|deletable| 
            ActivePartner.find(deletable.id).destroy
        }

        debugger
        
        render json: GameSerializer.new(game).to_serialized_json
    end

    private

    def games_params
        params.require(:game).permit(:name, :dayCount, :money, :sanity, :flown, :goal, :soundOn, :timings, :injury)
    end

end
