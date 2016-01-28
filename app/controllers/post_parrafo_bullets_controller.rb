class PostParrafoBulletsController < ApplicationController
  before_action :set_post_parrafo_bullet, only: [:show, :edit, :update, :destroy]

  # GET /post_parrafo_bullets
  # GET /post_parrafo_bullets.json
  def index
    @post_parrafo_bullets = PostParrafoBullet.all
  end

  # GET /post_parrafo_bullets/1
  # GET /post_parrafo_bullets/1.json
  def show
  end

  # GET /post_parrafo_bullets/new
  def new
    @post_parrafo_bullet = PostParrafoBullet.new
    @post_parrafo_bullet.post_parrafo_id = params[:parrafo]
    @post_parrafo = PostParrafo.find(params[:parrafo])
  end

  # GET /post_parrafo_bullets/1/edit
  def edit
    @post_parrafo_bullet.post_parrafo_id = params[:parrafo]
    @post_parrafo = PostParrafo.find(params[:parrafo])
  end

  # POST /post_parrafo_bullets
  # POST /post_parrafo_bullets.json
  def create
    @post_parrafo_bullet = PostParrafoBullet.new(post_parrafo_bullet_params)

    respond_to do |format|
      if @post_parrafo_bullet.save
        format.html { redirect_to :back, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post_parrafo_bullet }
        format.js {render inline: "location.reload();" }
#        format.html { redirect_to @post_parrafo_bullet, notice: 'Post parrafo bullet was successfully created.' }
#        format.json { render :show, status: :created, location: @post_parrafo_bullet }
      else
        format.html { render :new }
        format.json { render json: @post_parrafo_bullet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /post_parrafo_bullets/1
  # PATCH/PUT /post_parrafo_bullets/1.json
  def update
    respond_to do |format|
      if @post_parrafo_bullet.update(post_parrafo_bullet_params)
        format.html { redirect_to :back, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :created, location: @post_parrafo_bullet }
        format.js {render inline: "location.reload();" }
#        format.html { redirect_to @post_parrafo_bullet, notice: 'Post parrafo bullet was successfully updated.' }
#        format.json { render :show, status: :ok, location: @post_parrafo_bullet }
      else
        format.html { render :edit }
        format.json { render json: @post_parrafo_bullet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /post_parrafo_bullets/1
  # DELETE /post_parrafo_bullets/1.json
  def destroy
    @post_parrafo_bullet.destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: 'It was successfully destroyed.' }
      format.js {render inline: "location.reload();" }
      #format.html { redirect_to detallar_url(post: params[:postdel]), notice: 'Post parrafo bullet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post_parrafo_bullet
      @post_parrafo_bullet = PostParrafoBullet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_parrafo_bullet_params
      params.require(:post_parrafo_bullet).permit(:ppb_titulo, :ppb_texto, :post_parrafo_id)
    end
end
