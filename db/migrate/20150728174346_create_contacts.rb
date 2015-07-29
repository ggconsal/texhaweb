class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :con_nya
      t.string :con_nombre
      t.string :con_apellido
      t.references :profile, index: true
      t.string :con_telefono
      t.text :con_obs
      t.string :con_boton_sitio
      t.boolean :con_telefono_sn
      t.string :con_mail
      t.string :con_password
      t.string :con_password2
      t.boolean :con_subscribir
      t.boolean :con_confirmado
      t.string :con_password_confirmacion
      t.references :option, index: true
      t.references :canalingreso, index: true

      t.timestamps null: false
    end
    add_foreign_key :contacts, :profiles
    add_foreign_key :contacts, :options
    add_foreign_key :contacts, :canalingresos
  end
end
