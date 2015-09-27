json.array!(@pages) do |page|
  json.extract! page, :id, :pag_nombre, :pag_titulo, :pag_desc
  json.url page_url(page, format: :json)
end
