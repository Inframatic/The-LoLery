class ChampionsController < ApplicationController
  def index
    @champions = Champion.find_all()
  end

  def create
    @champion = Champion.find_all()
    for champion in @champions
      champion.save
    end
  end
end
