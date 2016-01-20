class AddPosTagTranslate4ToPost < ActiveRecord::Migration
  def change
    add_column :posts, :pos_tag_translate4, :string
  end
end
