json.array!(@feijaos) do |feijao|
  json.extract! feijao, :id, :tipo, :preco
  json.url feijao_url(feijao, format: :json)
end
