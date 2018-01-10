class ClansController < ApplicationController
  def index
    @clans = Clan.all
  end

  def show
    @clan = Clan.find(params[:id])
  end

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

  def edit
    @clan = Clan.find(params[:id])
  end

  def update
    @clan = Clan.find(params[:id])
    if @clan.update_attributes clan_attrs
      redirect_to(@clan)
    else
      p @clan.errors.full_messages
      render 'edit'
    end
  end

  def destroy
    @clan = Clan.find(params[:id])
    @clan.destroy
    redirect_to living_spaces_path
  end

  private

  def clan_attrs
    params
        .require(:clan)
        .permit(:name, :living_spaces)
  end
end