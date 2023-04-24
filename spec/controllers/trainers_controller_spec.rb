require "rails_helper"  

RSpec.describe TrainersController, type: :controller do
  describe "GET #show" do
    let(:trainer) { create(:trainer) } # Create a new trainer using the FactoryBot gem

    it "assigns the requested trainer" do
      trainer = Trainer.create(name: "Ash")
      get :show, params: { id: "1" }
      expect(assigns(:trainer)).to eq(trainer)
    end

    # it "assigns a random pokemon id" do
    #   get :show, params: { id: trainer.id }
    #   expect(assigns(:pokemon_id)).to be_between(1, POKEMON_COUNT)
    # end

    # it "assigns abilities, types and moves for the selected pokemon" do
    #   allow(PokeApi).to receive(:get).and_return(
    #     double(abilities: ["ability1", "ability2"]),
    #     double(types: ["type1", "type2"]),
    #     double(moves: ["move1", "move2"])
    #   )

    #   get :show, params: { id: trainer.id }
    #   expect(assigns(:abilities)).to eq(["ability1", "ability2"])
    #   expect(assigns(:types)).to eq(["type1", "type2"])
    #   expect(assigns(:moves)).to eq(["move1", "move2"])
    # end
  end
end