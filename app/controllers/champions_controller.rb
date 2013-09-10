class ChampionsController < ApplicationController
  def index
  	# Champion.build_from_xml
    @champions = Champion.all
  end

  def show
  	@champion = Champion.find(params[:id])
  end
end
