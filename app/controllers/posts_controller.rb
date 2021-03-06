class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all
    if @posts.any?
      @ultimo = Post.last
    end
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
  end

  # GET /posts/new
  def new
    @post = Post.new
    @pagina = params[:pagina]
    @estilo = params[:estilo]
    @pagina_post = params[:pagina_post]
  end

  # GET /posts/1/edit
  def edit
    @pagina = params[:pagina]
    @estilo = params[:estilo]
    @pagina_post = params[:pagina_post]
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)

    respond_to do |format|
      if @post.save
        format.html { redirect_to :back, notice: 'Post was successfully destroyed.' }
        format.json { render :show, status: :created, location: @post }
        format.js {render inline: "location.reload();" }
        #format.json { head :no_content }
      else
        format.html { redirect_to :back, notice: 'Imagen con tamaño incorrecto.' }
        format.json { render json: @post.errors, status: :unprocessable_entity }
        format.js   { render json: @post.errors, status: :unprocessable_entity }
      end
    end

#    respond_to do |format|
#      if @post.save
#        format.html { redirect_to @post, notice: 'Post was successfully created.' }
#        format.json { render :show, status: :created, location: @post }
#      else
#        format.html { render :new }
#        format.json { render json: @post.errors, status: :unprocessable_entity }
#      end
#    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to :back, notice: 'Post was successfully created.' }
        format.json { render :back, status: :created, location: @post }
        format.js {render inline: "location.reload();" }
        #format.json { head :no_content }
      else
        format.html { redirect_to :back, notice: 'Imagen con tamaño incorrecto.' }
        format.json { render json: @post.errors, status: :unprocessable_entity }
        format.js   { render json: @post.errors, status: :unprocessable_entity }

        #format.json { render :show, status: :created, location: @post }
        #format.js {render :show }

        #format.html { redirect_to show_path }
        #format.json { render json: @post.errors, status: :unprocessable_entity }
        #format.js   { render json: @post.errors, status: :unprocessable_entity }
        
        #flash.now[:danger] = 'No está Registrado.  Por favor revise su casilla de email y siga los instrucciones.'
        #render 'new'
        
        #format.html { redirect_to :back, notice: 'Post was successfully created.' }
        #format.json { render :back, status: :created, location: @post }
        #format.js {render inline: "location.reload();" }
      end
    end
  end

  def duplicar
    @post = Post.find(params[:id])
    @new_post = @post.dup

    #@new_post.pos_intro = ""
    @new_post.pos_section = 0
    @new_post.pos_titulo = 'Copia de "' + @new_post.pos_titulo + '"'

    respond_to do |format|
      if @new_post.save
        format.html { redirect_to :back, notice: 'Post was successfully duplicated.' }
        format.json { render :back, status: :created, location: @post }
        format.js {render inline: "location.reload();" }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:imagen_big, :imagen_big_v, :pos_titulo, :pos_subtitulo, :pos_intro, :pos_conclusion, :pos_imagen_tmp, :contact_id, :pos_page, :pos_section, :pos_estilo, :pos_feature, :pos_boton_desc, :pos_boton_color, :pos_simbolo, :pos_tipo, :pos_tag01, :pos_tag02, :pos_tag03, :pos_tag04, :pos_tag05, :pos_tag06, :pos_clase, :pos_boton_destino, :pos_tag_translate1, :pos_tag_translate2, :pos_tag_translate3, :pos_tag_translate4, :pos_tag_translate5, :pos_tag_translate6, :pos_precio_lista, :pos_porcentaje_oferta, :pos_palabra_oferta, :pos_texto_oferta, :pos_precio_oferta, :pos_ribbon1_texto, :pos_ribbon1_estilo, :pos_ribbon2_texto, :pos_ribbon2_estilo)
    end
end
