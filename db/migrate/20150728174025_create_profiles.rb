class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :pro_titulo
      t.text :pro_desc

      t.timestamps null: false
    end
  end
end
