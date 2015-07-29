json.array!(@post_rels) do |post_rel|
  json.extract! post_rel, :id, :pre_titulo, :pli_url, :pli_desc, :post_id
  json.url post_rel_url(post_rel, format: :json)
end
