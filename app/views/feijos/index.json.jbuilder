json.array!(@feijos) do |feijo|
  json.extract! feijo, :id, :tipo, :preco
  json.url feijo_url(feijo, format: :json)
end
