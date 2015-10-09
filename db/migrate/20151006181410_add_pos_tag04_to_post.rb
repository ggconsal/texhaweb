class AddPosTag04ToPost < ActiveRecord::Migration
  def change
    add_column :posts, :pos_tag04, :string
  end
end
