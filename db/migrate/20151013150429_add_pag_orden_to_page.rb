class AddPagOrdenToPage < ActiveRecord::Migration
  def change
    add_column :pages, :pag_orden, :integer
  end
end
