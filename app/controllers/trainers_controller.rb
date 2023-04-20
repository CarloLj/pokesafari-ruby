class TrainersController < ApplicationController
  def index
    @numero_pokemones = POKEMON_COUNT
    @pokemon_id = rand(@numero_pokemones)
    @trainer = Trainer.new
  end

  def show
    @trainer = Trainer.find(params[:id])
  end

  def new
    @trainer = Trainer.new
  end

  def create
    @trainer_exists = Trainer.find_by(name: trainer_params[:name])

    if(@trainer_exists.nil? == false)
      redirect_to @trainer_exists
    else
      @trainer = Trainer.new(trainer_params)
      if @trainer.save
        redirect_to @trainer
      else
        render :new, status: :unprocessable_entity
      end
    end
  end

  private
    def trainer_params
      params.require(:trainer).permit(:name)
    end
end
