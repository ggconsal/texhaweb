class CreatePostParrafos < ActiveRecord::Migration
  def change
    create_table :post_parrafos do |t|
      t.string :par_titulo
      t.text :par_texto
      t.references :post, index: true
      t.string :par_imagen_tmp

      t.timestamps null: false
    end
    add_foreign_key :post_parrafos, :posts
  end
end
