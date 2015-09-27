# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

@contact = Contact.create(con_nya: "Gustavo", con_nombre: "Superuser", con_mail: "gconsal@gmail.com", con_confirmado: true, password: "pipoto25", password_confirmation: "pipoto25")

Page.create(pag_nombre: "ubicacion", pag_titulo: "Nuestra Direccion", pag_desc: "Nuestra Direccion")

Post.create(pos_titulo: "Dejenos su Consulta", pos_subtitulo: "Evaluaremos su Caso sin Cargo", pos_intro: " ", pos_tipo: "contacto", pos_feature: "col-xs-12 col-sm-5 texto-justificado margen-der-5 margen-izq-2 titulo-centrado margen-sup-4", contact_id: @contact.id, pos_page: "ubicacion", pos_section: 100, pos_estilo: "1")

