json.array!(@canalingresos) do |canalingreso|
  json.extract! canalingreso, :id, :cin_titulo, :cin_desc
  json.url canalingreso_url(canalingreso, format: :json)
end
