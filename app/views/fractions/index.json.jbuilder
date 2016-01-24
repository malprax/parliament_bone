json.array!(@fractions) do |fraction|
  json.extract! fraction, :id, :name, :parliament_member_id
  json.url fraction_url(fraction, format: :json)
end
