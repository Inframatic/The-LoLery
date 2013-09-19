class Video < ActiveRecord::Base
	acts_as_votable
	has_many :comments
	belongs_to :user
	default_scope -> { order('created_at DESC') }
	validates :video, presence: true, length: { maximum: 420 }
	# validates :video_description, presence: true

	def code
	  self.video.try(:split, '/').try(:last) || ''
	end
end