class Game < ApplicationRecord
    belongs_to :user
    has_many :game_characters
    has_many :characters, through: :game_characters
end
