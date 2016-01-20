class AddPosBotonDestinoToPost < ActiveRecord::Migration
  def change
    add_column :posts, :pos_boton_destino, :string
  end
end
