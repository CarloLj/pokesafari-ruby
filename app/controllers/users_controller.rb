class UsersController < ApplicationController
  before_action :redirect_if_authenticated, only: [:create, :new]

  def index
    @numero_pokemones = POKEMON_COUNT
    @pokemon_id = rand(@numero_pokemones)
    @abilities = PokeApi.get(pokemon: @pokemon_id).abilities
    @types = PokeApi.get(pokemon: @pokemon_id).types
    @moves = PokeApi.get(pokemon: @pokemon_id).moves
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    puts user_params
    if @user.save
      @user.send_confirmation_email
      redirect_to root_path, notice: "Please check your email for confirmation instructions"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end