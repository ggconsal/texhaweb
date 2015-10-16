class RemovePagHorizontalFromPage < ActiveRecord::Migration
  def change
    remove_column :pages, :pag_horizontal, :boolean
  end
end
