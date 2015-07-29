class CreatePostCommentAnswers < ActiveRecord::Migration
  def change
    create_table :post_comment_answers do |t|
      t.string :pca_titulo
      t.text :pca_texto
      t.references :post_comment, index: true
      t.references :contact, index: true

      t.timestamps null: false
    end
    add_foreign_key :post_comment_answers, :post_comments
    add_foreign_key :post_comment_answers, :contacts
  end
end
