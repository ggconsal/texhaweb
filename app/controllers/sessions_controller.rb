class SessionsController < ApplicationController
  def new
  end

  def create
    contact = Contact.find_by(con_mail: params[:session][:email].downcase)
    if contact && contact.authenticate(params[:session][:password])
      if contact.con_confirmado
        log_in contact
        redirect_to contacts_url
      else
        flash.now[:danger] = 'No está Registrado.  Por favor revise su casilla de email y siga los instrucciones.'
        render 'new'
      end
    else
      flash.now[:danger] = 'email o Password Errónea. Por favor, intentelo nuevamente.'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
