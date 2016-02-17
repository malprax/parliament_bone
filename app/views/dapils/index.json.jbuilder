json.array!(@dapils) do |dapil|
  json.extract! dapil, :id, :name
  json.url dapil_url(dapil, format: :json)
end
