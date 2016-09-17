class StructuralsController < ApplicationController
  before_action :set_structural, only: [:show, :edit, :update, :destroy]

  # GET /structurals
  # GET /structurals.json
  def index
    @structurals = Structural.all
  end

  # GET /structurals/1
  # GET /structurals/1.json
  def show
  end

  # GET /structurals/new
  def new
    @structural = Structural.new
  end

  # GET /structurals/1/edit
  def edit
  end

  # POST /structurals
  # POST /structurals.json
  def create
    @structural = Structural.new(structural_params)

    respond_to do |format|
      if @structural.save
        format.html { redirect_to @structural, notice: 'Structural was successfully created.' }
        format.json { render :show, status: :created, location: @structural }
      else
        format.html { render :new }
        format.json { render json: @structural.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /structurals/1
  # PATCH/PUT /structurals/1.json
  def update
    respond_to do |format|
      if @structural.update(structural_params)
        format.html { redirect_to @structural, notice: 'Structural was successfully updated.' }
        format.json { render :show, status: :ok, location: @structural }
      else
        format.html { render :edit }
        format.json { render json: @structural.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /structurals/1
  # DELETE /structurals/1.json
  def destroy
    @structural.destroy
    respond_to do |format|
      format.html { redirect_to structurals_url, notice: 'Structural was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_structural
      @structural = Structural.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def structural_params
      params.require(:structural).permit(:name)
    end
end
