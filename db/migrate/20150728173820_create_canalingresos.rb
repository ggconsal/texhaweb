class CreateCanalingresos < ActiveRecord::Migration
  def change
    create_table :canalingresos do |t|
      t.string :cin_titulo
      t.text :cin_desc

      t.timestamps null: false
    end
  end
end
