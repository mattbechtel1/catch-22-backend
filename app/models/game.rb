class Game < ApplicationRecord
    has_many :game_characters
    has_many :characters, through: :game_characters
end
