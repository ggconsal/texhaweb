class AddPosRibbon2TextoToPost < ActiveRecord::Migration
  def change
    add_column :posts, :pos_ribbon2_texto, :string
  end
end
