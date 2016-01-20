class AddPosRibbon1EstiloToPost < ActiveRecord::Migration
  def change
    add_column :posts, :pos_ribbon1_estilo, :string
  end
end
