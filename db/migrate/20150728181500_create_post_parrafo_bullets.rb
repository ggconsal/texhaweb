class CreatePostParrafoBullets < ActiveRecord::Migration
  def change
    create_table :post_parrafo_bullets do |t|
      t.string :ppb_titulo
      t.text :ppb_texto
      t.references :post_parrafo, index: true

      t.timestamps null: false
    end
    add_foreign_key :post_parrafo_bullets, :post_parrafos
  end
end
