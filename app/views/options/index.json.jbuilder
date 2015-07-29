json.array!(@options) do |option|
  json.extract! option, :id, :opt_titulo, :opt_desc, :area_id
  json.url option_url(option, format: :json)
end
