class AddPagEstiloHeaderToPage < ActiveRecord::Migration
  def change
    add_column :pages, :pag_estilo_header, :string
  end
end
