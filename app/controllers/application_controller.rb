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

  def pag_menu
    @tmp_menu = Page.find_by pag_nombre: "menu"
  end

  def pag_general
    @tmp_general = Page.find_by pag_nombre: "general"
  end

  def pag_direc
    @tmp_direc = Page.find_by pag_nombre: "direccion"
  end

  helper_method :paginas
  helper_method :pag_menu
  helper_method :pag_general
  helper_method :pag_direc
  helper_method :pag_redes

end
