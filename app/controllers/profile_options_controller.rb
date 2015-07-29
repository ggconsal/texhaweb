class ProfileOptionsController < ApplicationController
  before_action :set_profile_option, only: [:show, :edit, :update, :destroy]

  # GET /profile_options
  # GET /profile_options.json
  def index
    @profile_options = ProfileOption.all
  end

  # GET /profile_options/1
  # GET /profile_options/1.json
  def show
  end

  # GET /profile_options/new
  def new
    @profile_option = ProfileOption.new
  end

  # GET /profile_options/1/edit
  def edit
  end

  # POST /profile_options
  # POST /profile_options.json
  def create
    @profile_option = ProfileOption.new(profile_option_params)

    respond_to do |format|
      if @profile_option.save
        format.html { redirect_to @profile_option, notice: 'Profile option was successfully created.' }
        format.json { render :show, status: :created, location: @profile_option }
      else
        format.html { render :new }
        format.json { render json: @profile_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profile_options/1
  # PATCH/PUT /profile_options/1.json
  def update
    respond_to do |format|
      if @profile_option.update(profile_option_params)
        format.html { redirect_to @profile_option, notice: 'Profile option was successfully updated.' }
        format.json { render :show, status: :ok, location: @profile_option }
      else
        format.html { render :edit }
        format.json { render json: @profile_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profile_options/1
  # DELETE /profile_options/1.json
  def destroy
    @profile_option.destroy
    respond_to do |format|
      format.html { redirect_to profile_options_url, notice: 'Profile option was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile_option
      @profile_option = ProfileOption.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_option_params
      params.require(:profile_option).permit(:profile_id, :option_id, :poc_fecha)
    end
end
