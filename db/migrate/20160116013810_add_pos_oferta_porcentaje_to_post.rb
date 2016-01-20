class AddPosOfertaPorcentajeToPost < ActiveRecord::Migration
  def change
    add_column :posts, :pos_porcentaje_oferta, :decimal, precision: 5, scale: 2
  end
end
