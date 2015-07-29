json.array!(@post_parrafo_bullets) do |post_parrafo_bullet|
  json.extract! post_parrafo_bullet, :id, :ppb_titulo, :ppb_texto, :post_parrafo_id
  json.url post_parrafo_bullet_url(post_parrafo_bullet, format: :json)
end
