class AddPagMenuToPage < ActiveRecord::Migration
  def change
    add_column :pages, :pag_menu, :string
  end
end
