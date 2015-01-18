class MapController < ApplicationController

  def index
    @post = Post.all
    @hash = Gmaps4rails.build_markers(@post) do |post, marker|
      marker.lat post.latitude
      marker.lng post.longitude
      marker.infowindow ActionController::Base.helpers.link_to(post.title, post_path(post))
    end
  end
end
