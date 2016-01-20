class AddPosOfertaPrecioToPost < ActiveRecord::Migration
  def change
    add_column :posts, :pos_precio_oferta, :decimal, precision: 8, scale: 2
  end
end
