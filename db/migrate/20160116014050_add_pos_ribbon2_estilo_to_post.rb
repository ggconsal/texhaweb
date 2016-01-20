class AddPosRibbon2EstiloToPost < ActiveRecord::Migration
  def change
    add_column :posts, :pos_ribbon2_estilo, :string
  end
end
