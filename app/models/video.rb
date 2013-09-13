class Video < ActiveRecord::Base
	has_many :user_videos
	has_many :users, through: :user_videos
	default_scope -> { order('created_at DESC') }
	validates :content, presence: true, length: { maximum: 70 }
end
