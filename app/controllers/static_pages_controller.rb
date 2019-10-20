class StaticPagesController < ApplicationController
  def home
    if params[:id]
      @photos = Flickr.photos.search(user_id: params[:id])
    end
  end

end
