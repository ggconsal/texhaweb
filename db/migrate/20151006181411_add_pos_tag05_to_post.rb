class AddPosTag05ToPost < ActiveRecord::Migration
  def change
    add_column :posts, :pos_tag05, :string
  end
end
