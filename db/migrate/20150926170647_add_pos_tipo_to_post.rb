class AddPosTipoToPost < ActiveRecord::Migration
  def change
    add_column :posts, :pos_tipo, :string
  end
end
