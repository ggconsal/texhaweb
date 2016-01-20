class AddPosOfertaTextoToPost < ActiveRecord::Migration
  def change
    add_column :posts, :pos_texto_oferta, :string
  end
end
