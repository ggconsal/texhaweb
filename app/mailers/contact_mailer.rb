class ContactMailer < ApplicationMailer

	default from: "contacto@texhaarg.com"

	def contact_email(contact)
		@contact = contact
		mail(to:@contact.con_mail, :subject => "Newsletter Texha: Confirmar Dirección Correo") # + " " + @contact.con_nya)
	end

end
