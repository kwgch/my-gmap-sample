class MapController < ApplicationController
  def index
    @post = Post.all
    @hash = Gmaps4rails.build_markers(@post) do |post, marker|
      marker.lat post.latitude
      marker.lng post.longitude
      marker.infowindow post.body
      marker.json({title: post.title})
    end
  end
end