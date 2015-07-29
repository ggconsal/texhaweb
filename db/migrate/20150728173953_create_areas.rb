class CreateAreas < ActiveRecord::Migration
  def change
    create_table :areas do |t|
      t.string :are_titulo
      t.text :are_desc

      t.timestamps null: false
    end
  end
end
