json.array!(@post_comments) do |post_comment|
  json.extract! post_comment, :id, :pco_titulo, :pco_texto, :post_id, :contact_id
  json.url post_comment_url(post_comment, format: :json)
end
