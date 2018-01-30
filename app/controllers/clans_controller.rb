class ClansController < ApplicationController
  before_action :set_clan, only: [:show, :edit, :update, :destroy]

  def index
    @clans = Clan.all
  end

  def show; end

  def new
    @clan = Clan.new
  end

  def create
    @clan = Clan.new(clan_attrs)

    if @clan.save
      redirect_to(@clan)
    else
      p @clan.errors.full_messages
      render 'new'
    end
  end

  def edit; end

  def update
    if @clan.update_attributes clan_attrs
      redirect_to(@clan)
    else
      p @clan.errors.full_messages
      render 'edit'
    end
  end

  def destroy
    @clan.destroy
    redirect_to clans_path
  end

  private

  def clan_attrs
    params
        .require(:clan)
        .permit(:name, :living_spaces)
  end

  def set_clan
    @clan = Clan.find(params[:id])
  end
end