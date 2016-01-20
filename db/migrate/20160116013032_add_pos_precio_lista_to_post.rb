class AddPosPrecioListaToPost < ActiveRecord::Migration
  def change
    add_column :posts, :pos_precio_lista, :decimal, precision: 8, scale: 2
  end
end
