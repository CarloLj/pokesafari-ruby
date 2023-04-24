require 'rails_helper'

RSpec.describe PokemonsController, type: :controller do
  
    describe "Post Create" do
        context 'save pokemon correctly' do
            subject {post :create, params: {pokemon:{ pokemon_id: 1}}}

            it 'should add to trainer' do
            
            end

            it 'should redirect to same trainer' do
                
            end
        end
    end
end