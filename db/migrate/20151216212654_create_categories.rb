class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :cat_titulo
      t.text :cat_desc
      t.string :cat_tipo

      t.timestamps null: false
    end
  end
end
