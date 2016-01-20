class AddCatTituloTranslateToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :cat_titulo_translate, :string
  end
end
