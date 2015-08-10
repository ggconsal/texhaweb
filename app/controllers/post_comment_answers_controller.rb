class PostCommentAnswersController < ApplicationController
  before_action :set_post_comment_answer, only: [:show, :edit, :update, :destroy]

  # GET /post_comment_answers
  # GET /post_comment_answers.json
  def index
    @post_comment_answers = PostCommentAnswer.all
  end

  # GET /post_comment_answers/1
  # GET /post_comment_answers/1.json
  def show
  end

  # GET /post_comment_answers/new
  def new
    @post_comment_answer = PostCommentAnswer.new
    @post_comment_answer.post_comment_id = params[:comment]
    @post_comment = PostComment.find(params[:comment])
  end

  # GET /post_comment_answers/1/edit
  def edit
    @post_comment_answer.post_comment_id = params[:comment]
    @post_comment = PostComment.find(params[:comment])
  end

  # POST /post_comment_answers
  # POST /post_comment_answers.json
  def create
    @post_comment_answer = PostCommentAnswer.new(post_comment_answer_params)

    respond_to do |format|
      if @post_comment_answer.save
        format.html { redirect_to @post_comment_answer, notice: 'Post comment answer was successfully created.' }
        format.json { render :show, status: :created, location: @post_comment_answer }
      else
        format.html { render :new }
        format.json { render json: @post_comment_answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /post_comment_answers/1
  # PATCH/PUT /post_comment_answers/1.json
  def update
    respond_to do |format|
      if @post_comment_answer.update(post_comment_answer_params)
        format.html { redirect_to @post_comment_answer, notice: 'Post comment answer was successfully updated.' }
        format.json { render :show, status: :ok, location: @post_comment_answer }
      else
        format.html { render :edit }
        format.json { render json: @post_comment_answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /post_comment_answers/1
  # DELETE /post_comment_answers/1.json
  def destroy
    @post_comment_answer.destroy
    respond_to do |format|
      format.html { redirect_to post_comment_answers_url, notice: 'Post comment answer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post_comment_answer
      @post_comment_answer = PostCommentAnswer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_comment_answer_params
      params.require(:post_comment_answer).permit(:pca_titulo, :pca_texto, :post_comment_id, :contact_id)
    end
end
