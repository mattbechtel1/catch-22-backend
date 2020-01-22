class GamesController < ApplicationController
    def index
        games = Game.all
        render json: GameSerializer.new(games).to_serialized_json
    end

    def create
        all_characters = Character.all
        new_game = Game.create(
            name: games_params[:name],
            dayCount: 0,
            passCount: 0,
            leave: 1.0,
            money: 50,
            sanity: 50,
            flown: 10,
            goal: 40,
            soundOn: true,
            timings: 4500,
            injury: nil,
            duckett: 'available',
            characters: all_characters,
            user_id: games_params[:user_id]
        )
        render json: GameSerializer.new(new_game).to_serialized_json
    end

    def show
        game = Game.find(params[:id])
        render json: GameSerializer.new(game).to_serialized_json
    end

    def update
        game = Game.find(params[:id])
        game.update(games_params)
        game_characters = GameCharacter.where(game_id: params[:id])
                
        deletables = game_characters.select {|game_character| params[:partner_ids].exclude?(game_character.character_id)}

        deletables.each {|deletable| 
            GameCharacter.find(deletable.id).destroy
        }
        
        render json: GameSerializer.new(game).to_serialized_json
    end

    private

    def games_params
        params.require(:game).permit(:name, :user_id, :dayCount, :money, :sanity, :flown, :goal, :soundOn, :timings, :duckett, :injury)
    end

end
