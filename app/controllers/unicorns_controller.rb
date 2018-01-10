class UnicornsController < ApplicationController
  before_action :set_unicorn, only: [:show, :edit, :update, :destroy]

  def index
    @unicorns = Unicorn.all
  end

  def show; end

  def new
    @unicorn = Unicorn.new
  end

  def create
    @unicorn = Unicorn.new(unicorn_attrs)

    if @unicorn.save
      redirect_to(@unicorn)
    else
      p @unicorn.errors.full_messages
      render 'new'
    end
  end

  def edit; end

  def update
    if @unicorn.update_attributes unicorn_attrs
      redirect_to(@unicorn)
    else
      p @unicorn.errors.full_messages
      render 'edit'
    end
  end

  def destroy
    @unicorn.destroy
    redirect_to unicorns_path
  end

  private

  def unicorn_attrs
    params
      .require(:unicorn)
      .permit(:name, :age, :sex, :clan, :living_space)
  end

  def set_unicorn
    @unicorn = Unicorn.find(params[:id])
  end
end