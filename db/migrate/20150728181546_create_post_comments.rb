class CreatePostComments < ActiveRecord::Migration
  def change
    create_table :post_comments do |t|
      t.string :pco_titulo
      t.text :pco_texto
      t.references :post, index: true
      t.references :contact, index: true

      t.timestamps null: false
    end
    add_foreign_key :post_comments, :posts
    add_foreign_key :post_comments, :contacts
  end
end
