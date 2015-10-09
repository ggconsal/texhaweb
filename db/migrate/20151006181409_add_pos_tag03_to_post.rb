class AddPosTag03ToPost < ActiveRecord::Migration
  def change
    add_column :posts, :pos_tag03, :string
  end
end
