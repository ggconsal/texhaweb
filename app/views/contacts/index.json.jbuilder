json.array!(@contacts) do |contact|
  json.extract! contact, :id, :con_nya, :con_nombre, :con_apellido, :profile_id, :con_telefono, :con_obs, :con_boton_sitio, :con_telefono_sn, :con_mail, :con_password, :con_password2, :con_subscribir, :con_confirmado, :con_password_confirmacion, :option_id, :canalingreso_id
  json.url contact_url(contact, format: :json)
end
