class PostParrafosController < ApplicationController
  before_action :set_post_parrafo, only: [:show, :edit, :update, :destroy]

  # GET /post_parrafos
  # GET /post_parrafos.json
  def index
    #@post_parrafos = PostParrafo.all
    @post = Post.find(params[:post])
    @post_parrafos = PostParrafo.where("post_id = ?", params[:post])
    @post_comments = PostComment.where("post_id = ?", params[:post])
    @post_rels = PostRel.where("post_id = ?", params[:post])
  end

  # GET /post_parrafos/1
  # GET /post_parrafos/1.json
  def show
  end

  # GET /post_parrafos/new
  def new
    @post_parrafo = PostParrafo.new
    @post_parrafo.post_id = params[:post]
    @post = Post.find(params[:post])
  end

  # GET /post_parrafos/1/edit
  def edit
    @post_parrafo.post_id = params[:post]
    @post = Post.find(params[:post])
  end

  # POST /post_parrafos
  # POST /post_parrafos.json
  def create
    @post_parrafo = PostParrafo.new(post_parrafo_params)

    respond_to do |format|
      if @post_parrafo.save
        format.html { redirect_to :back, notice: 'Post parrafo was successfully created.' }
        format.json { render :show, status: :created, location: @post_parrafo }
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
        format.html { redirect_to @post_parrafo, notice: 'Post was successfully destroyed.' }
        format.json { render :show, status: :ok, location: @post_parrafo }
        #format.json { head :no_content }
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
      format.html { redirect_to post_parrafos_url(post: params[:postdel]), notice: 'Post parrafo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post_parrafo
      @post_parrafo = PostParrafo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_parrafo_params
      params.require(:post_parrafo).permit(:imagen_small, :par_titulo, :par_texto, :post_id, :par_imagen_tmp)
    end
end
