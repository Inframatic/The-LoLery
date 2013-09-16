class VideosController < ApplicationController

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

  	private

	    def video_params
	      params.require(:video).permit(:video)
	    end

	    def correct_user
      		@video = current_user.videos.find_by(id: params[:id])
      		redirect_to root_url if @video.nil?
    	end

end