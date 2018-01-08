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
    @unicorn = Unicorn.new(
        params
            .require(:unicorn)
            .permit(:name, :age, :sex)
    )

    if @unicorn.save
      redirect_to(@unicorn)
    else
      render 'new'
    end
  end

  def edit
    @unicorn = Unicorn.find(params[:id])
  end

  def update
    @unicorn = Unicorn.find(params[:id])
    if @unicorn.update(params.require(:unicorn).permit(:number, :name, :level, :hp))
      redirect_to(@unicorn)
    else
      render 'edit'
    end
  end

  def destroy
    @unicorn = Unicorn.find(params[:id])
    @unicorn.destroy
    redirect_to unicorns_path
  end
end