class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :pag_nombre
      t.string :pag_titulo
      t.text :pag_desc

      t.timestamps null: false
    end
  end
end
