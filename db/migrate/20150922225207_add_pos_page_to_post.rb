class AddPosPageToPost < ActiveRecord::Migration
  def change
    add_column :posts, :pos_page, :string
  end
end
