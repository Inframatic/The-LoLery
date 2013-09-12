class Video < ActiveRecord::Base
	has_many :user_videos
	has_many :users, through: :user_videos
end
