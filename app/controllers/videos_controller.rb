class VideosController < ApplicationController
	include ActionController::Live
	before_filter :user_signed_in?

	def index
	end

	def new
		@video = current_user.videos.new
	end

	def create
		@video = current_user.videos.new(video_params)
		respond_to do |format|
			if @video.save
				format.html {redirect_to @video, notice: "Your video has been successfully posted"}
			else
				format.html {redirect_to @video, alert: @video.errors.full_messages}
			end
		end
	end

	def show
		@video = Video.find(params[:id])
	end

	def destroy
	end

end