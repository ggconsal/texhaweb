class AddPosTag02ToPost < ActiveRecord::Migration
  def change
    add_column :posts, :pos_tag02, :string
  end
end
