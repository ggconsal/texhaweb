class ContactMailer < ApplicationMailer

	default from: "Contactos@texhaarg.com"

	def contact_email(contact_admin, contact)
		@contact_admin = contact_admin
		@contact = contact
		
		# utilizo "con_password" para ingresar el nombre de la empresa.
		@from = "Contacto " + @contact_admin.con_password + " <" + @contact_admin.con_mail + ">"
		mail(to:@contact.con_mail, from:@from, 
		     subject: "Novedades " + @contact_admin.con_password + ": Confirmar Dirección Correo",
		     bcc: @contact_admin.con_obs) # + " " + @contact.con_nya)
	end

	def contact_advise(contact_admin, contact)
		@contact_admin = contact_admin
		@contact = contact
		mail(to:@contact_admin.con_obs, from:@contact_admin.con_mail, 
		  :subject => "Novedades de la Web: Nuevo Contacto") # + " " + @contact.con_nya)
	end

end
