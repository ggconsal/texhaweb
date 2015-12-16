json.array!(@categories) do |category|
  json.extract! category, :id, :cat_titulo, :cat_desc, :cat_tipo, :cat_orden
  json.url category_url(category, format: :json)
end
