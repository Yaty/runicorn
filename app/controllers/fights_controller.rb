class FightsController < ApplicationController
  before_action :set_fight, only: [:show]

  def index
    @fights = Fight.all
  end

  def new
    @fight = Fight.new
  end

  def show; end

  def create
    @fight = Fight.new(fight_attrs)

    if @fight.save
      redirect_to(@fight)
    else
      p @fight.errors.full_messages
      render 'new'
    end
  end
end

def fight_attrs
  params
      .require(:fight)
      .permit(:name, :firstUnicorn_id, :secondUnicorn_id)
end

def set_fight
  @fight = Fight.find(params[:id])
end