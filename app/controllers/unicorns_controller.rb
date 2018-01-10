class UnicornsController < ApplicationController
  def index
    @unicorns = Unicorn.all
  end

  def show
    @unicorn = Unicorn.find(params[:id])
  end

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

  def edit
    @unicorn = Unicorn.find(params[:id])
  end

  def update
    @unicorn = Unicorn.find(params[:id])
    if @unicorn.update_attributes unicorn_attrs
      redirect_to(@unicorn)
    else
      p @unicorn.errors.full_messages
      render 'edit'
    end
  end

  def destroy
    @unicorn = Unicorn.find(params[:id])
    @unicorn.destroy
    redirect_to unicorns_path
  end

  private

  def unicorn_attrs
    params
      .require(:unicorn)
      .permit(:name, :age, :sex, :clan, :living_space)
  end
end