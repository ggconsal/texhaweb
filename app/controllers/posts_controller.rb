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
  end

  # GET /posts/1/edit
  def edit
    @pagina = params[:pagina]
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully destroyed.' }
        format.json { render :show, status: :created, location: @post }
        format.js {render inline: "location.reload();" }
        #format.json { head :no_content }
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
        #format.html { redirect_to post_parrafos_url, notice: 'Post was successfully destroyed.' }
        format.html { redirect_to :back, notice: 'Post was successfully created.' }
        format.json { render :back, status: :created, location: @post }
        format.js {render inline: "location.reload();" }
        #format.json { head :no_content }
      end
    end
  end

  def duplicar
    @post = Post.find(params[:id])
    @new_post = @post.dup

    @new_post.pos_intro = ""
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
      params.require(:post).permit(:imagen_big, :pos_titulo, :pos_subtitulo, :pos_intro, :pos_conclusion, :pos_imagen_tmp, :contact_id, :pos_page, :pos_section, :pos_estilo, :pos_feature, :pos_boton_desc, :pos_boton_color, :pos_simbolo, :pos_tipo, :pos_tag01, :pos_tag02, :pos_tag03, :pos_tag04, :pos_tag05, :pos_tag06)
    end
end
