class CreatePostLinks < ActiveRecord::Migration
  def change
    create_table :post_links do |t|
      t.string :pli_titulo
      t.string :pli_url
      t.text :pli_desc
      t.references :post, index: true

      t.timestamps null: false
    end
    add_foreign_key :post_links, :posts
  end
end
