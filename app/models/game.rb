class Game < ApplicationRecord
    has_many :active_partners
    has_many :partners, through: :active_partners
end
