class ChampionTag < ActiveRecord::Base
  belongs_to :champion
  belongs_to :tag
end
