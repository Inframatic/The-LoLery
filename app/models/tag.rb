class Tag < ActiveRecord::Base
	has_many :champion_tags
	has_many :champions, through: :champion_tags
end
