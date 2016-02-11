json.array!(@structure_fractions) do |structure_fraction|
  json.extract! structure_fraction, :id
  json.url structure_fraction_url(structure_fraction, format: :json)
end
