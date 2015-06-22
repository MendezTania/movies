class CartelerasController < ApplicationController
  before_action :set_cartelera, only: [:show, :edit, :update, :destroy]

  # GET /carteleras
  # GET /carteleras.json
  def index
    @carteleras = Cartelera.all
  end

  # GET /carteleras/1
  # GET /carteleras/1.json
  def show
  end

  # GET /carteleras/new
  def new
    @cartelera = Cartelera.new
  end

  # GET /carteleras/1/edit
  def edit
  end

  # POST /carteleras
  # POST /carteleras.json
  def create
    @cartelera = Cartelera.new(cartelera_params)

    respond_to do |format|
      if @cartelera.save
        format.html { redirect_to @cartelera, notice: 'Cartelera was successfully created.' }
        format.json { render :show, status: :created, location: @cartelera }
      else
        format.html { render :new }
        format.json { render json: @cartelera.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carteleras/1
  # PATCH/PUT /carteleras/1.json
  def update
    respond_to do |format|
      if @cartelera.update(cartelera_params)
        format.html { redirect_to @cartelera, notice: 'Cartelera was successfully updated.' }
        format.json { render :show, status: :ok, location: @cartelera }
      else
        format.html { render :edit }
        format.json { render json: @cartelera.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carteleras/1
  # DELETE /carteleras/1.json
  def destroy
    @cartelera.destroy
    respond_to do |format|
      format.html { redirect_to carteleras_url, notice: 'Cartelera was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cartelera
      @cartelera = Cartelera.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cartelera_params
      params.require(:cartelera).permit(:nombre, :genero, :rating)
    end
end
