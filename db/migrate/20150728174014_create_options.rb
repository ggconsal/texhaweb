class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.string :opt_titulo
      t.text :opt_desc
      t.references :area, index: true

      t.timestamps null: false
    end
    add_foreign_key :options, :areas
  end
end
