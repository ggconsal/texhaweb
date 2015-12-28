class ContactsController < ApplicationController
  before_action :set_contact, only: [:show, :edit, :update, :destroy]

  # GET /contacts
  # GET /contacts.json
  def index
    @contacts = Contact.where(["con_nya <> ?", "Superuser"])
  end

  # GET /contacts/1
  # GET /contacts/1.json
  def show
  end

  # GET /contacts/new
  def new
    # lo que estoy usando ahora es fpg_contacto. @post lo dejo por
    # compatibilidad con versiones anteriores.

    # Para traerme los datos a mostrar en la pantalla.
    @post = Post.find_by pos_tipo: "contacto"

    # Nuevo Contacto
    @contact = Contact.new
    # Para saber cual fue el bottton que presionó (en cual está interesado).
    @contact.con_boton_sitio = params[:motivo]
  end

  # GET /contacts/1/edit
  def edit

    #if @contact.con_nombre == "" && @contact.con_nya != ""
    #    @contact.con_nombre = @contact.con_nya
    #end

    @tipo = params[:tipo]

  end

  # POST /contacts
  # POST /contacts.json
  def create
    @contact = Contact.new(contact_params)
    # para traerme los datos del admin y así poder enviarle el mail de aviso.
    @contact_admin = Contact.find_by con_nya: "Admin"

    respond_to do |format|
      if @contact.save
        if @contact_admin.con_password == "Texha"
          ContactMailer.contact_email(@contact_admin, @contact).deliver_now
        end
        ContactMailer.contact_advise(@contact_admin, @contact).deliver_now
        
        if @contact.con_boton_sitio.include? "ubicacion"
          # Se llama desde la página de "Direcciones", por eso no tiene que ser modal.
          format.html { redirect_to :back, notice: 'Contacto Creado.' }
          format.json { head :no_content }
        else
          # Tiene que ser modal.
          format.html { redirect_to @contact, notice: 'Contacto Creado.' }
          format.json { render :show, status: :created, location: @contact }
        end
      else
        format.html { render :new }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contacts/1
  # PATCH/PUT /contacts/1.json
  def update
    respond_to do |format|
      if @contact.update(contact_params)
        #format.html { redirect_to posts_url, notice: 'Contact was successfully updated.' }
        #format.json { render :show, status: :ok, location: @contact }
        format.html { redirect_to :root, notice: 'Contact was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :edit }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contacts/1
  # DELETE /contacts/1.json
  def destroy
    @contact.destroy
    respond_to do |format|
      format.html { redirect_to contacts_url, notice: 'Contact was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def mail_confirmation

    #@contact = Contact.find_by  con_mail: params[:mail]
    @contact = Contact.find(params[:id_usuario])
    @contact.con_confirmado = true
    @contact.save
    log_in @contact

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact
      @contact = Contact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contact_params
      params.require(:contact).permit(:con_nya, :con_nombre, :con_apellido, :profile_id, :con_telefono, :con_obs, :con_boton_sitio, :con_telefono_sn, :con_mail, :con_password, :con_password2, :con_subscribir, :con_confirmado, :con_password_confirmacion, :option_id, :canalingreso_id, :password, :password_confirmation)
    end
end
