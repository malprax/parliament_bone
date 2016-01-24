json.array!(@comissions) do |comission|
  json.extract! comission, :id, :name, :code, :fraction_id, :comment
  json.url comission_url(comission, format: :json)
end
