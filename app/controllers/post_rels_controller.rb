class PostRelsController < ApplicationController
  before_action :set_post_rel, only: [:show, :edit, :update, :destroy]

  # GET /post_rels
  # GET /post_rels.json
  def index
    @post_rels = PostRel.all
  end

  # GET /post_rels/1
  # GET /post_rels/1.json
  def show
  end

  # GET /post_rels/new
  def new
    @post_rel = PostRel.new
  end

  # GET /post_rels/1/edit
  def edit
  end

  # POST /post_rels
  # POST /post_rels.json
  def create
    @post_rel = PostRel.new(post_rel_params)

    respond_to do |format|
      if @post_rel.save
        format.html { redirect_to @post_rel, notice: 'Post rel was successfully created.' }
        format.json { render :show, status: :created, location: @post_rel }
      else
        format.html { render :new }
        format.json { render json: @post_rel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /post_rels/1
  # PATCH/PUT /post_rels/1.json
  def update
    respond_to do |format|
      if @post_rel.update(post_rel_params)
        format.html { redirect_to @post_rel, notice: 'Post rel was successfully updated.' }
        format.json { render :show, status: :ok, location: @post_rel }
      else
        format.html { render :edit }
        format.json { render json: @post_rel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /post_rels/1
  # DELETE /post_rels/1.json
  def destroy
    @post_rel.destroy
    respond_to do |format|
      format.html { redirect_to post_rels_url, notice: 'Post rel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post_rel
      @post_rel = PostRel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_rel_params
      params.require(:post_rel).permit(:pre_titulo, :pli_url, :pli_desc, :post_id)
    end
end
