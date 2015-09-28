class AddPagEstiloHeadervToPage < ActiveRecord::Migration
  def change
    add_column :pages, :pag_estilo_headerv, :string
  end
end
