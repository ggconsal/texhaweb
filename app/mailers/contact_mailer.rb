class ContactMailer < ApplicationMailer

	default from: "Contactos@texhaarg.com"

	def contact_email(contact_admin, contact)
		@contact_admin = contact_admin
		@contact = contact
		
		# utilizo "con_password" para ingresar el nombre de la empresa.
		mail(to:@contact.con_mail, :subject => "Novedades " + @contact_admin.con_password + ": Confirmar Dirección Correo") # + " " + @contact.con_nya)
	end

	def contact_advise(contact_admin, contact)
		@contact_admin = contact_admin
		@contact = contact
		mail(to:@contact_admin.con_mail, :subject => "Novedades de la Web: Nuevo Contacto") # + " " + @contact.con_nya)
	end

end
