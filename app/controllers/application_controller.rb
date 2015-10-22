class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  include SessionsHelper

  def paginas
	@pages = Page.where(["pag_tipo <> ? ", "config"]).order(:pag_orden)
  end

  def pagconfig
	@config = Page.where(["pag_tipo = ? ", "config"])
  end

  helper_method :paginas
  helper_method :pagconfig


end
