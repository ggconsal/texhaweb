class CreateProfileOptions < ActiveRecord::Migration
  def change
    create_table :profile_options do |t|
      t.references :profile, index: true
      t.references :option, index: true
      t.datetime :poc_fecha

      t.timestamps null: false
    end
    add_foreign_key :profile_options, :profiles
    add_foreign_key :profile_options, :options
  end
end
