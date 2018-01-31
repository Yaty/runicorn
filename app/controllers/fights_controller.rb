
class FightsController < ApplicationController
  def index
    @fights = Fight.all
  end
end