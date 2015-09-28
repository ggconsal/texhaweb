class AddPagLatiToPage < ActiveRecord::Migration
  def change
    add_column :pages, :pag_lati, :string
  end
end
