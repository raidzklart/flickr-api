class StaticPagesController < ApplicationController
  def home
    @user_id ="185067026@N03"
    @photos = Flickr.photos.search(user_id:"185067026@N03")
    @photo = @photos.first
    @photo.thumbnail!
    puts @photo.source_url
  end
end
