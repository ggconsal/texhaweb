json.array!(@post_links) do |post_link|
  json.extract! post_link, :id, :pli_titulo, :pli_url, :pli_desc, :post_id
  json.url post_link_url(post_link, format: :json)
end
