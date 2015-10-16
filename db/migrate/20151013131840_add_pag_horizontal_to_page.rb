class AddPagHorizontalToPage < ActiveRecord::Migration
  def change
    add_column :pages, :pag_horizontal, :boolean
  end
end
