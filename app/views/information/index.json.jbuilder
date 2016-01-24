json.array!(@information) do |information|
  json.extract! information, :id, :title, :content, :image
  json.url information_url(information, format: :json)
end
