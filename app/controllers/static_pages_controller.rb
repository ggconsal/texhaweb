class StaticPagesController < ApplicationController
  before_action :data_load, only: [:home, :ubicacion, :quien, :otramas, :servicios, :blog, :shop]
  #before_action :set_contact, only: [:show, :edit, :update, :destroy]

  def ubicacion
    @contact = Contact.new
    @contact.con_boton_sitio = params[:motivo]
  end

  def home
  end

  def blog
  end

  def shop
  end

  def quien
  end

  def otramas
  end

  def servicios
  end

  def contacto
  end

  # POST /contacts
  # POST /contacts.json
  def create
    @contact = Contact.new(contact_params)

    respond_to do |format|
      if @contact.save
        ContactMailer.contact_email(@contact).deliver_now
        
        format.html { redirect_to @contact, notice: 'Contacto Creado.' }
        format.json { render :show, status: :created, location: @contact }
      else
        format.html { render :new }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact
      @contact = Contact.find(params[:id])
    end

    def data_load
      #@posts = Post.all
      #@posts = Post.find_by pos_page: 'servicios'  # Esto es para un solo registro. Te pone LIMIT 1.
      #where(["name = ? and email = ?", "Joe", "joe@example.com"])
      # "action_name" es el nombre de la vista que esta llamando.
      if params[:categ] == nil
        @posts = Post.where(["pos_page = ? ", action_name]).order(:pos_section)
      else
        @posts = Post.where(["pos_page = ? and (pos_tag01 = ? or pos_tag02 = ?)", action_name, params[:categ], "dd"]).order(:pos_section)
      end

      # Cuando son varios registros se pregunta por "empty?".
      if @posts.empty?
        if params[:categ] == nil
          @posts = Post.where(["pos_page = ? ", action_name + "-demo"]).order(:pos_section)
        else
          @posts = Post.where(["pos_page = ? and (pos_tag01 = ? or pos_tag02 = ? or pos_tag03 = ?)", action_name , params[:categ], params[:categ], params[:categ]]).order(:pos_section)
        end
      end

      @page = Page.find_by pag_nombre: action_name

      # Cuando es un solo registro se pregunta por "nil?".
      if @page.nil?
        @page = Page.find_by pag_nombre: action_name + "-demo"
      end
    
      #if @posts
      #  @ultimo = Post.last
      #end
    end

    def contact_params
      params.require(:contact).permit(:con_nya, :con_nombre, :con_apellido, :profile_id, :con_telefono, :con_obs, :con_boton_sitio, :con_telefono_sn, :con_mail, :con_password, :con_password2, :con_subscribir, :con_confirmado, :con_password_confirmacion, :option_id, :canalingreso_id, :password, :password_confirmation)
    end
end
