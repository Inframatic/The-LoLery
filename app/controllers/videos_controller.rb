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
	end

	def show
		@video = Video.find(params[:id])
	end

	def destroy
	end

end