json.array!(@organize_fractions) do |organize_fraction|
  json.extract! organize_fraction, :id, :name
  json.url organize_fraction_url(organize_fraction, format: :json)
end
