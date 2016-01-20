class AddPosTagTranslate2ToPost < ActiveRecord::Migration
  def change
    add_column :posts, :pos_tag_translate2, :string
  end
end
