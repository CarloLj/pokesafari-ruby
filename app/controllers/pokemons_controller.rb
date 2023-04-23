class PokemonsController < ApplicationController
    def create
        @trainer = Trainer.find(params[:trainer_id])
        @pokemon = @trainer.pokemons.create(pokemon_params)
        redirect_to trainer_path(@trainer)
      end
    
      private
        def pokemon_params
          params.require(:pokemon).permit(:pokemon_id)
        end
end
