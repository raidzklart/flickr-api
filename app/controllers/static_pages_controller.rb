class StaticPagesController < ApplicationController
  def home
    begin
      if params[:id]
        @photos = Flickr.photos.search(user_id: params[:id])
      end
    rescue => e
      logger.error e.message
      flash.now[:error] = "There has been a problem finding the images for that user."
      render :home
    end
  end

end
