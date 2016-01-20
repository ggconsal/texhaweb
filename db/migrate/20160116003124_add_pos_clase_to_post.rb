class AddPosClaseToPost < ActiveRecord::Migration
  def change
    add_column :posts, :pos_clase, :string
  end
end
