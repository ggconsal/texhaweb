class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :pos_titulo
      t.string :pos_subtitulo
      t.text :pos_intro
      t.text :pos_conclusion
      t.string :pos_imagen_tmp
      t.string :pos_boton_desc
      t.string :pos_boton_color
      t.text :pos_feature  # debe contemplar por ahora los features para dispositivos XS, SM. MD y LG.
      t.string :pos_simbolo
      t.string :pos_estilo
      t.references :contact, index: true

      t.timestamps null: false
    end
    add_foreign_key :posts, :contacts
  end
end
