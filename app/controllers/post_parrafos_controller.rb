class PostParrafosController < ApplicationController
  before_action :set_post_parrafo, only: [:show, :edit, :update, :destroy]
  before_action :set_post, only: [:index, :new, :edit]

  # GET /post_parrafos
  # GET /post_parrafos.json
  def index
    #@post_parrafos = PostParrafo.all
    if params[:item]
      @vPostid = params[:item][0, 5]
      @post = Post.find(@vPostid)
    end

    if params[:post]
      @vPostid = params[:post]
      @post = Post.find(@vPostid)
    end

    @post_parrafos = PostParrafo.where("post_id = ? and par_imagen_tmp <> 'imagen'", @vPostid)
    @post_images = PostParrafo.where("post_id = ? and par_imagen_tmp = 'imagen'", @vPostid)
    @post_comments = PostComment.where("post_id = ?", @vPostid)
    @post_rels = PostRel.where("post_id = ?", @vPostid)

    if @post_images.empty?
      @cant_images = 0
    else
      @cant_images = @post_images.count
    end
  end

  # GET /post_parrafos/1
  # GET /post_parrafos/1.json
  def show
  end

  # GET /post_parrafos/new
  def new
    if params[:post]
      @vPostid = params[:post]
    end

    @post_parrafo = PostParrafo.new
    @post_parrafo.post_id = @vPostid
    @post = Post.find(@vPostid)
  end

  # GET /post_parrafos/1/edit
  def edit
    if params[:post]
      @vPostid = params[:post]
    end

    @post_parrafo.post_id = @vPostid
    @post = Post.find(@vPostid)
  end

  # POST /post_parrafos
  # POST /post_parrafos.json
  def create
    @post_parrafo = PostParrafo.new(post_parrafo_params)

    respond_to do |format|
      if @post_parrafo.save
        format.html { redirect_to :back, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post_parrafo }
        format.js {render inline: "location.reload();" }
#        format.html { redirect_to @post_parrafo, notice: 'Post parrafo was successfully created.' }
#        format.json { render :show, status: :created, location: @post_parrafo }
#        format.json { head :no_content }
      else
        format.html { redirect_to :back, notice: 'Imagen con tamaño incorrecto.' }
        format.json { render json: @post_parrafo.errors, status: :unprocessable_entity }
        format.js   { render json: @post_parrafo.errors, status: :unprocessable_entity }
      end
    end

#    respond_to do |format|
#      if @post_parrafo.save
#        format.html { redirect_to :back, notice: 'Post parrafo was successfully created.' }
#        format.json { render :show, status: :created, location: @post_parrafo }
#      else
#        format.html { render :new }
#        format.json { render json: @post_parrafo.errors, status: :unprocessable_entity }
#      end
#    end
  end

  # PATCH/PUT /post_parrafos/1
  # PATCH/PUT /post_parrafos/1.json
  def update
    respond_to do |format|
      if @post_parrafo.update(post_parrafo_params)
        format.html { redirect_to :back, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :created, location: @post_parrafo }
        format.js {render inline: "location.reload();" }
#        format.html { redirect_to @post_parrafo, notice: 'Post was successfully updated.' }
#        format.json { render :show, status: :ok, location: @post_parrafo }
        #format.json { head :no_content }
      else
        format.html { redirect_to :back, notice: 'Imagen con tamaño incorrecto.' }
        format.json { render json: @post_parrafo.errors, status: :unprocessable_entity }
        format.js   { render json: @post_parrafo.errors, status: :unprocessable_entity }
      end
    end

#    respond_to do |format|
#      if @post_parrafo.update(post_parrafo_params)
#        format.html { redirect_to @post_parrafo, notice: 'Post parrafo was successfully updated.' }
#        format.json { render :show, status: :ok, location: @post_parrafo }
#      else
#        format.html { render :edit }
#        format.json { render json: @post_parrafo.errors, status: :unprocessable_entity }
#      end
#    end
  end

  # DELETE /post_parrafos/1
  # DELETE /post_parrafos/1.json
  def destroy
    @post_parrafo.destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: 'It was successfully destroyed.' }
      format.js {render inline: "location.reload();" }
      #format.html { redirect_to detallar_url(post: params[:postdel]), notice: 'Post parrafo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post_parrafo
      @post_parrafo = PostParrafo.find(params[:id])
    end

    def set_post
      @post_id = 1
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_parrafo_params
      params.require(:post_parrafo).permit(:imagen_small, :par_titulo, :par_texto, :post_id, :par_imagen_tmp)
    end
end
