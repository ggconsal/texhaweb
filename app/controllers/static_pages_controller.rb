class StaticPagesController < ApplicationController
  before_action :data_load, only: [:home, :ubicacion, :quienes, :pagina1, :pagina2, :servicios, :blog, :shop, :preguntas, :formapag]
  #before_action :set_contact, only: [:show, :edit, :update, :destroy]


  def home
    if !@page
      @page = Page.find_by pag_tipo: "blog"
      if @page
        redirect_to :blog
      else
        @page = Page.find_by pag_tipo: "shop"
        if @page
          redirect_to :shop
        end
      end
    end
  end

  def ubicacion
    @contact = Contact.new
    @contact.con_boton_sitio = params[:motivo]
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
      @page = Page.find_by pag_tipo: action_name

      # Cuando es un solo registro se pregunta por "nil?".
      #if @page.nil?
      #  @page = Page.find_by pag_tipo: action_name + "-demo"
      #end
    
      if @page
        if  (@page.pag_nombre.include? "blog")
          @categories = Category.where(["cat_tipo = ? ", "blog"]).order(:cat_orden)
        elsif (@page.pag_nombre.include? "shop")
          @categories = Category.where(["cat_tipo = ? ", "shop"]).order(:cat_orden)
        else
          @categories = nil
        end

        @post_images = Post.where(["pos_page = ? and pos_clase = ?", @page.pag_nombre, "imagen"]).order(:pos_section)

        if params[:categ] == nil
          @posts = Post.where(["pos_page = ? and pos_clase <> ?", @page.pag_nombre, "imagen"]).order(:pos_section)
        else
          @posts = Post.where(["pos_page = ? and pos_clase <> ? and (pos_tag_translate1 = ? or pos_tag_translate2 = ? or pos_tag_translate3 = ? or pos_tag_translate4 = ? or pos_tag_translate5 = ? or pos_tag_translate6 = ?)", @page.pag_nombre, "imagen", params[:categ], params[:categ], params[:categ], params[:categ], params[:categ], params[:categ]]).order(:pos_section)
        end

        if @posts.empty?
          @cant_posts = 0
        else
          @cant_posts = @posts.count
          #@ultimo = @posts.last
          #@primero = @posts.first
        end
      end
    end

    def contact_params
      params.require(:contact).permit(:con_nya, :con_nombre, :con_apellido, :profile_id, :con_telefono, :con_obs, :con_boton_sitio, :con_telefono_sn, :con_mail, :con_password, :con_password2, :con_subscribir, :con_confirmado, :con_password_confirmacion, :option_id, :canalingreso_id, :password, :password_confirmation)
    end
end
