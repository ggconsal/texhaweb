class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  include SessionsHelper

  def paginas
  	#@pages = Page.where(["pag_nombre like ?", "*-demo"]).order(:pos_section)
  	@pages = Page.all.order(pag_nombre: :desc)
  end

  helper_method :paginas

end
