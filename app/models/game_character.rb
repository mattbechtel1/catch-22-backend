class GameCharacter < ApplicationRecord
  belongs_to :character
  belongs_to :game
end
