json.array!(@posts) do |post|
  json.extract! post, :id, :title, :body, :address, :latitude, :longitude
  json.url post_url(post, format: :json)
end
