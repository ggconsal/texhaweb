class AddPagEstiloHeaderhToPage < ActiveRecord::Migration
  def change
    add_column :pages, :pag_estilo_headerh, :string
  end
end
