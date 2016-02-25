class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  include SessionsHelper

  def paginas
	 @pages = Page.where(["pag_tipo <> ? ", "config"]).order(:pag_orden)
  end

  # "fpg_" significa Funcion sobre una Pagina.

  def fpg_redes
    # uso el "where" porque puede traer mas de un registro
    @tmp_redes = Page.where(["pag_nombre = ? ", "redes"])
  end

  def fpg_menu
    @tmp_menu = Page.find_by pag_nombre: "menu"
  end

  def fpg_general
    @tmp_general = Page.find_by pag_nombre: "general"
  end

  def fpg_direc
    @tmp_direc = Page.find_by pag_nombre: "direccion"
  end

  def fpg_contacto
    @tmp_contacto = Page.find_by pag_nombre: "contacto"
  end

  def fpg_blog_shop
    @tmp_blog_shop = Page.where(pag_tipo: ["blog", "shop"])
  end

  helper_method :paginas
  helper_method :fpg_menu
  helper_method :fpg_general
  helper_method :fpg_direc
  helper_method :fpg_redes
  helper_method :fpg_contacto
  helper_method :fpg_blog_shop

end
