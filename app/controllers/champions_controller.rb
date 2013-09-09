class ChampionsController < ApplicationController
  def index
  	Champion.build_from_xml
    @champions = Champion.all
  end
end
