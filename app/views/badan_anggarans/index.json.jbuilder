json.array!(@badan_anggarans) do |badan_anggaran|
  json.extract! badan_anggaran, :id, :level
  json.url badan_anggaran_url(badan_anggaran, format: :json)
end
