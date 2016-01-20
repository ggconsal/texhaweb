class AddPosTagTranslate6ToPost < ActiveRecord::Migration
  def change
    add_column :posts, :pos_tag_translate6, :string
  end
end
