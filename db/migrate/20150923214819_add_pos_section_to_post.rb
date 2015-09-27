class AddPosSectionToPost < ActiveRecord::Migration
  def change
    add_column :posts, :pos_section, :integer
  end
end
