class AddPosTag06ToPost < ActiveRecord::Migration
  def change
    add_column :posts, :pos_tag06, :string
  end
end
