class AddPagTipoToPage < ActiveRecord::Migration
  def change
    add_column :pages, :pag_tipo, :string
  end
end
