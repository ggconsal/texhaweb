class AddPagDesignToPage < ActiveRecord::Migration
  def change
    add_column :pages, :pag_design, :string
  end
end
