class StructureFractionsController < ApplicationController
  before_action :set_structure_fraction, only: [:show, :edit, :update, :destroy]

  # GET /structure_fractions
  # GET /structure_fractions.json
  def index
    @structure_fractions = StructureFraction.all
  end

  # GET /structure_fractions/1
  # GET /structure_fractions/1.json
  def show
  end

  # GET /structure_fractions/new
  def new
    @structure_fraction = StructureFraction.new
  end

  # GET /structure_fractions/1/edit
  def edit
  end

  # POST /structure_fractions
  # POST /structure_fractions.json
  def create
    @structure_fraction = StructureFraction.new(structure_fraction_params)

    respond_to do |format|
      if @structure_fraction.save
        format.html { redirect_to @structure_fraction, notice: 'Structure fraction was successfully created.' }
        format.json { render :show, status: :created, location: @structure_fraction }
      else
        format.html { render :new }
        format.json { render json: @structure_fraction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /structure_fractions/1
  # PATCH/PUT /structure_fractions/1.json
  def update
    respond_to do |format|
      if @structure_fraction.update(structure_fraction_params)
        format.html { redirect_to @structure_fraction, notice: 'Structure fraction was successfully updated.' }
        format.json { render :show, status: :ok, location: @structure_fraction }
      else
        format.html { render :edit }
        format.json { render json: @structure_fraction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /structure_fractions/1
  # DELETE /structure_fractions/1.json
  def destroy
    @structure_fraction.destroy
    respond_to do |format|
      format.html { redirect_to structure_fractions_url, notice: 'Structure fraction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_structure_fraction
      @structure_fraction = StructureFraction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def structure_fraction_params
      params[:structure_fraction].permit(:level_id, :parliament_member_id)
    end
end
