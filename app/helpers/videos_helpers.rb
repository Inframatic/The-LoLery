module VideosHelper
	def format_date(time)
		time.in_time_zone("Eastern Time (US & Canada)").strftime("%B %e %Y - %l:%M %p")
	end
end