class CharactersController < ApplicationController
    def index
        partners = Character.all
        render json: partners
    end

end
