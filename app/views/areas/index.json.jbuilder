json.array!(@areas) do |area|
  json.extract! area, :id, :are_titulo, :are_desc
  json.url area_url(area, format: :json)
end
