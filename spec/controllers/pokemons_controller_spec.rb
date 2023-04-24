require 'rails_helper'

RSpec.describe PokemonsController, type: :controller do
    describe "Post Create" do
        context 'save pokemon correctly' do
            #@trainer = FactoryBot.create(:trainer)

            subject { post :create, params: { trainer_id: 1, pokemon: { pokemon_id: "1" } } }

            it 'should add to trainer' do
                created_pokemon = Trainer.find(1).pokemons.find_by(pokemon_id: "1")
                expect(created_pokemon).not_to be_nil
            end

            it 'should redirect to same trainer' do
                expect(response).to be_successful
            end

        end
    end
end