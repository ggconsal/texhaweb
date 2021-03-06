class PagesController < ApplicationController
  before_action :set_page, only: [:show, :edit, :update, :destroy]

  # GET /pages
  # GET /pages.json
  def index
    @pages = Page.all
  end

  # GET /pages/1
  # GET /pages/1.json
  def show
  end

  # GET /pages/new
  def new
    @page = Page.new

    if params[:config]
      @page.pag_tipo = "config"
    end

  end

  # GET /pages/1/edit
  def edit

    #@page.pag_tipo = @page.pag_nombre.gsub(/\d/, '')
    #@page.pag_orden = @page.pag_nombre.gsub(/[a-zA-Z]/, '')

  end

  # POST /pages
  # POST /pages.json
  def create
    @page = Page.new(page_params)

    respond_to do |format|
      if @page.save
        format.html { redirect_to :back, notice: 'Page was successfully created.' }
        format.json { head :no_content }
        format.js {render inline: "location.reload();" }
        #format.json { render :show, status: :created, location: @page }
      else
        format.html { redirect_to :back, notice: 'Imagen con tamaño incorrecto.' }
        format.json { render json: @page.errors, status: :unprocessable_entity }
        format.js   { render json: @page.errors, status: :unprocessable_entity }

        #format.html { render :new }
        #format.json { render json: @page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pages/1
  # PATCH/PUT /pages/1.json
  def update

    respond_to do |format|
      if @page.update(page_params)
        format.html { redirect_to :back, notice: 'Page was successfully updated.' }
        format.json { head :no_content }
        format.js {render inline: "location.reload();" }
        #format.json { render :show, status: :ok, location: @page }
      else
        format.html { redirect_to :back, notice: 'Imagen con tamaño incorrecto.' }
        format.json { render json: @page.errors, status: :unprocessable_entity }
        format.js   { render json: @page.errors, status: :unprocessable_entity }

        #format.html { render :edit }
        #format.json { render json: @page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pages/1
  # DELETE /pages/1.json
  def destroy
    @page.destroy
    respond_to do |format|
      format.html { redirect_to pages_url, notice: 'Page was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_page
      @page = Page.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def page_params
      params.require(:page).permit(:imagen_hori, :imagen_vert, :pag_nombre, :pag_titulo, :pag_desc, :pag_estilo_body, :pag_estilo_headerh, :pag_estilo_headerv, :pag_imagen_texto, :pag_lati, :pag_long, :pag_design, :pag_orden, :pag_tipo, :pag_simbolo, :pag_menu)
    end
end
