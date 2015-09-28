class AddPagEstiloBodyToPage < ActiveRecord::Migration
  def change
    add_column :pages, :pag_estilo_body, :string
  end
end
