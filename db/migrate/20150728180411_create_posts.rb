class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :pos_titulo
      t.text :pos_intro
      t.text :pos_conclusion
      t.string :pos_imagen_tmp
      t.references :contact, index: true

      t.timestamps null: false
    end
    add_foreign_key :posts, :contacts
  end
end
