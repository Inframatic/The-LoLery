class CommentsController < ApplicationController
before_action :signed_in_user, only: [:create, :destroy]

	def index
  	end

	def create
		@comment = current_user.comments.build(comment_params)
	    if @comment.save
	      flash[:success] = "Comment posted!"
	      redirect_to root_url
	    else
	      @feed_items = []
	      render 'static_pages/home'
	    end
	end

	def destroy
		@comment.destroy
    	redirect_to root_url
	end

  	private

	    def comment_params
	      params.require(:comment).permit(:content)
	    end

	    def correct_user
      		@comment = current_user.comments.find_by(id: params[:id])
      		redirect_to root_url if @comment.nil?
    	end
end