json.array!(@handicrafts) do |handicraft|
  json.extract! handicraft, :id, :name, :price, :description, :image, :owner_name
  json.url handicraft_url(handicraft, format: :json)
end
