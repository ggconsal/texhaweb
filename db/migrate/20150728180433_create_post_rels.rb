class CreatePostRels < ActiveRecord::Migration
  def change
    create_table :post_rels do |t|
      t.string :pre_titulo
      t.string :pli_url
      t.text :pli_desc
      t.references :post, index: true

      t.timestamps null: false
    end
    add_foreign_key :post_rels, :posts
  end
end
