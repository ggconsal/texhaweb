class RemovePagEstiloHeaderFromPage < ActiveRecord::Migration
  def change
    remove_column :pages, :pag_estilo_header, :string
  end
end
