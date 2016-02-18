json.array!(@badan_legislatifs) do |badan_legislatif|
  json.extract! badan_legislatif, :id, :level
  json.url badan_legislatif_url(badan_legislatif, format: :json)
end
