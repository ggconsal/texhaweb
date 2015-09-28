class AddPagLongToPage < ActiveRecord::Migration
  def change
    add_column :pages, :pag_long, :string
  end
end
