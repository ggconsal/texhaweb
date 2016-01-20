class AddPosOfertaPalabraToPost < ActiveRecord::Migration
  def change
    add_column :posts, :pos_palabra_oferta, :string
  end
end
