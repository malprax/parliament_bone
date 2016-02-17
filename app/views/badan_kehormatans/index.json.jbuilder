json.array!(@badan_kehormatans) do |badan_kehormatan|
  json.extract! badan_kehormatan, :id, :parliament_member_id
  json.url badan_kehormatan_url(badan_kehormatan, format: :json)
end
