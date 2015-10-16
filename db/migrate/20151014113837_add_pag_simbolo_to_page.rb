class AddPagSimboloToPage < ActiveRecord::Migration
  def change
    add_column :pages, :pag_simbolo, :string
  end
end
