class TrainersController < ApplicationController
  def new
    @trainer = Trainer.new
  end

  def create
    @trainer = Trainer.new(trainer_params)

    if @article.save
      redirect_to @article
    else
      render :new, status: :unprocessable_entity
    end
  end
end
