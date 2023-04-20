class StartController < ApplicationController
  def index
    @numero_pokemones = POKEMON_COUNT
    @pokemon_id = rand(@numero_pokemones)
  end
end
