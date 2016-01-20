class AddPosRibbon1TextoToPost < ActiveRecord::Migration
  def change
    add_column :posts, :pos_ribbon1_texto, :string
  end
end
