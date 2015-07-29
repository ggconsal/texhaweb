class CanalingresosController < ApplicationController
  before_action :set_canalingreso, only: [:show, :edit, :update, :destroy]

  # GET /canalingresos
  # GET /canalingresos.json
  def index
    @canalingresos = Canalingreso.all
  end

  # GET /canalingresos/1
  # GET /canalingresos/1.json
  def show
  end

  # GET /canalingresos/new
  def new
    @canalingreso = Canalingreso.new
  end

  # GET /canalingresos/1/edit
  def edit
  end

  # POST /canalingresos
  # POST /canalingresos.json
  def create
    @canalingreso = Canalingreso.new(canalingreso_params)

    respond_to do |format|
      if @canalingreso.save
        format.html { redirect_to @canalingreso, notice: 'Canalingreso was successfully created.' }
        format.json { render :show, status: :created, location: @canalingreso }
      else
        format.html { render :new }
        format.json { render json: @canalingreso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /canalingresos/1
  # PATCH/PUT /canalingresos/1.json
  def update
    respond_to do |format|
      if @canalingreso.update(canalingreso_params)
        format.html { redirect_to @canalingreso, notice: 'Canalingreso was successfully updated.' }
        format.json { render :show, status: :ok, location: @canalingreso }
      else
        format.html { render :edit }
        format.json { render json: @canalingreso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /canalingresos/1
  # DELETE /canalingresos/1.json
  def destroy
    @canalingreso.destroy
    respond_to do |format|
      format.html { redirect_to canalingresos_url, notice: 'Canalingreso was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_canalingreso
      @canalingreso = Canalingreso.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def canalingreso_params
      params.require(:canalingreso).permit(:cin_titulo, :cin_desc)
    end
end
