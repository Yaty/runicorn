class LivingSpacesController < ApplicationController
  before_action :set_living_space, only: [:show, :edit, :update, :destroy]

  def index
    @living_spaces = LivingSpace.all
  end

  def show; end

  def new
    @living_space = LivingSpace.new
  end

  def create
    @living_space = LivingSpace.new(living_space_attrs)

    if @living_space.save
      redirect_to(@living_space)
    else
      p @living_space.errors.full_messages
      render 'new'
    end
  end

  def edit; end

  def update
    if @living_space.update_attributes living_space_attrs
      redirect_to(@living_space)
    else
      p @living_space.errors.full_messages
      render 'edit'
    end
  end

  def destroy
    @living_space.destroy
    redirect_to living_spaces_path
  end

  private

  def living_space_attrs
    params
        .require(:living_space)
        .permit(:name, :latitude, :longitude, :width, :height)
  end

  def set_living_space
    @living_space = LivingSpace.find(params[:id])
  end
end