json.array!(@post_parrafos) do |post_parrafo|
  json.extract! post_parrafo, :id, :par_titulo, :par_texto, :post_id, :par_imagen_tmp
  json.url post_parrafo_url(post_parrafo, format: :json)
end
