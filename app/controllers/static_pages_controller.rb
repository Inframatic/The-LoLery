class StaticPagesController < ApplicationController
  def home
	  if signed_in?
	  	@comment = current_user.comments.build
	  	@video = current_user.videos.build
	  	@feed_items = current_user.feed.paginate(page: params[:page])
	  end
  end

  def help
  end

  def about
  end

  def contact
  end
end
