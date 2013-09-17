class Video < ActiveRecord::Base
	has_many :comments
	belongs_to :user
	default_scope -> { order('created_at DESC') }
	validates :video, presence: true, length: { maximum: 420 }

	def code
	  self.video.try(:split, '/').try(:last) || ''
	end
end