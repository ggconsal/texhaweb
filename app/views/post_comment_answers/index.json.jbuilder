json.array!(@post_comment_answers) do |post_comment_answer|
  json.extract! post_comment_answer, :id, :pca_titulo, :pca_texto, :post_comment_id, :contact_id
  json.url post_comment_answer_url(post_comment_answer, format: :json)
end
