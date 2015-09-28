class AddPagImagenTextoToPage < ActiveRecord::Migration
  def change
    add_column :pages, :pag_imagen_texto, :string
  end
end
