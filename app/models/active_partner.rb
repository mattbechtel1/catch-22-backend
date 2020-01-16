class ActivePartner < ApplicationRecord
  belongs_to :partner
  belongs_to :game
end
