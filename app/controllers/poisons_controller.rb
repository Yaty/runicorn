class PoisonsController < ApplicationController
  def index
    @poisons = Poison.all
  end

  def show
    @poison = Poison.find(params[:id])
  end

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

  def edit
    @poison = Poison.find(params[:id])
  end

  def update
    @poison = Poison.find(params[:id])
    if @poison.update_attributes poison_attrs
      redirect_to(@poison)
    else
      p @poison.errors.full_messages
      render 'edit'
    end
  end

  def destroy
    @poison = Poison.find(params[:id])
    @poison.destroy
    redirect_to poisons_path
  end

  private

  def poison_attrs
    params
      .require(:poison)
      .permit(:name, :power)
  end
end