class PokemonsController < ApplicationController
    def create
      @trainer = Current.user
      @pokemon = @trainer.pokemons.create(pokemon_params)
      redirect_to '/users'
    end
  
    private
      def pokemon_params
        params.require(:pokemon).permit(:pokemon_id)
      end
end
