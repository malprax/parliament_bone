class DapilsController < ApplicationController
  before_action :set_dapil, only: [:edit, :update, :destroy]

  # GET /dapils
  # GET /dapils.json
  def index
    @dapils = Dapil.order('created_at asc')
  end

  # GET /dapils/new
  def new
    @dapil = Dapil.new
  end

  # GET /dapils/1/edit
  def edit
  end

  # POST /dapils
  # POST /dapils.json
  def create
    @dapil = Dapil.new(dapil_params)

    respond_to do |format|
      if @dapil.save
        format.html { redirect_to dapils_path, notice: 'Dapil was successfully created.' }
        format.json { render :show, status: :created, location: @dapil }
      else
        format.html { render :new }
        format.json { render json: @dapil.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dapils/1
  # PATCH/PUT /dapils/1.json
  def update
    respond_to do |format|
      if @dapil.update(dapil_params)
        format.html { redirect_to dapils_path, notice: 'Dapil was successfully updated.' }
        format.json { render :show, status: :ok, location: @dapil }
      else
        format.html { render :edit }
        format.json { render json: @dapil.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dapils/1
  # DELETE /dapils/1.json
  def destroy
    @dapil.destroy
    respond_to do |format|
      format.html { redirect_to dapils_url, notice: 'Dapil was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dapil
      @dapil = Dapil.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dapil_params
      params.require(:dapil).permit(:name)
    end
end
