class ChangePosSection2InPost < ActiveRecord::Migration
  def change
  	change_column :posts, :pos_section, :decimal, precision: 5, scale: 2
  end
end
