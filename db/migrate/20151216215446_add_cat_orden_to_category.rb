class AddCatOrdenToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :cat_orden, :decimal
  end
end
