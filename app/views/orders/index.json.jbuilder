json.array!(@orders) do |order|
  json.extract! order, :id, :name, :cod, :descripcion
  json.url order_url(order, format: :json)
end
