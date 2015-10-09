class AddPosTag01ToPost < ActiveRecord::Migration
  def change
    add_column :posts, :pos_tag01, :string
  end
end
