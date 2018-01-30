class AptitudesController < ApplicationController
  before_action :set_aptitude, only: [:show, :edit, :update, :destroy]

  def index
    @aptitudes = Aptitude.all
  end

  def show; end

  def new
    @aptitude = Aptitude.new
  end

  def create
    @aptitude = Aptitude.new(aptitude_attrs)

    if @aptitude.save
      redirect_to(@aptitude)
    else
      p @aptitude.errors.full_messages
      render 'new'
    end
  end

  def edit; end

  def update
    if @aptitude.update_attributes aptitude_attrs
      redirect_to(@aptitude)
    else
      p @aptitude.errors.full_messages
      render 'edit'
    end
  end

  def destroy
    @aptitude.destroy
    redirect_to aptitudes_path
  end

  private

  def aptitude_attrs
    params
        .require(:aptitude)
        .permit(:name, :level)
  end

  def set_aptitude
    @aptitude = Aptitude.find(params[:id])
  end
end