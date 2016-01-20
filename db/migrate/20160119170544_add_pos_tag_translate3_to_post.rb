class AddPosTagTranslate3ToPost < ActiveRecord::Migration
  def change
    add_column :posts, :pos_tag_translate3, :string
  end
end
