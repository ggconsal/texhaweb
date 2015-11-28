class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  include SessionsHelper

  def paginas
	 @pages = Page.where(["pag_tipo <> ? ", "config"]).order(:pag_orden)
  end

  def pag_redes
	 @tmp01 = Page.where(["pag_nombre = ? ", "redes"])
  end

  def pag_logo
    @tmp02 = Page.find_by pag_nombre: "logo"
  end

  helper_method :paginas
  helper_method :pag_logo
  helper_method :pag_redes

end
