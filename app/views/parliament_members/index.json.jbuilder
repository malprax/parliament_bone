json.array!(@parliament_members) do |parliament_member|
  json.extract! parliament_member, :id, :name
  json.url parliament_member_url(parliament_member, format: :json)
end
