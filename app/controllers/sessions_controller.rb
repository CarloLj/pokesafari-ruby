class SessionsController < ApplicationController
  before_action :redirect_if_authenticated, only: [:index, :create, :new]
  
  def create
    @numero_pokemones = POKEMON_COUNT
    @user = User.find_by(email: params[:user][:email].downcase)
    if @user
      if @user.unconfirmed?
        redirect_to new_confirmation_path, alert: "You need to confirm your account"
      elsif @user.authenticate(params[:user][:password])
        login(@user)
        redirect_to users_path, notice: "Signed in."
      else
        flash.now[:alert] = "Incorrect email or password."
        render :new, status: :unprocessable_entity
      end
    else
      flash.now[:alert] = "Incorrect email or password."
        render :new, status: :unprocessable_entity
    end
  end

  def destroy
    logout
    redirect_to root_path, notice: "Signed out."
  end

  def new
    @numero_pokemones = POKEMON_COUNT
  end
end