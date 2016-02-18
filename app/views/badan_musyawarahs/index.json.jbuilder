json.array!(@badan_musyawarahs) do |badan_musyawarah|
  json.extract! badan_musyawarah, :id, :level
  json.url badan_musyawarah_url(badan_musyawarah, format: :json)
end
