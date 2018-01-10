class PoisonsController < ApplicationController
  before_action :set_poison, only: [:show, :edit, :update, :destroy]

  def index
    @poisons = Poison.all
  end

  def show; end

  def new
    @poison = Poison.new
  end

  def create
    @poison = Poison.new(poison_attrs)

    if @poison.save
      redirect_to(@poison)
    else
      p @poison.errors.full_messages
      render 'new'
    end
  end

  def edit; end

  def update
    if @poison.update_attributes poison_attrs
      redirect_to(@poison)
    else
      p @poison.errors.full_messages
      render 'edit'
    end
  end

  def destroy
    @poison.destroy
    redirect_to poisons_path
  end

  private

  def poison_attrs
    params
      .require(:poison)
      .permit(:name, :power, :duration)
  end

  def set_poison
    @poison = Poison.find(params[:id])
  end
end