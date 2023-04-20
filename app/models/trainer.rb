class Trainer < ApplicationRecord
    has_many :pokemons

    validates :name, presence: true, length: { minimum: 4 }
end
