class AddPosTagTranslate1ToPost < ActiveRecord::Migration
  def change
    add_column :posts, :pos_tag_translate1, :string
  end
end
