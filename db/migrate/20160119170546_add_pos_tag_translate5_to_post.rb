class AddPosTagTranslate5ToPost < ActiveRecord::Migration
  def change
    add_column :posts, :pos_tag_translate5, :string
  end
end
