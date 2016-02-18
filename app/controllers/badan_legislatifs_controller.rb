class BadanLegislatifsController < ApplicationController
  before_action :set_badan_legislatif, only: [:show, :edit, :update, :destroy]

  # GET /badan_legislatifs
  # GET /badan_legislatifs.json
  def index
    @badan_legislatifs = BadanLegislatif.all
  end

  # GET /badan_legislatifs/1
  # GET /badan_legislatifs/1.json
  def show
  end

  # GET /badan_legislatifs/new
  def new
    @badan_legislatif = BadanLegislatif.new
  end

  # GET /badan_legislatifs/1/edit
  def edit
  end

  # POST /badan_legislatifs
  # POST /badan_legislatifs.json
  def create
    @badan_legislatif = BadanLegislatif.new(badan_legislatif_params)

    respond_to do |format|
      if @badan_legislatif.save
        format.html { redirect_to @badan_legislatif, notice: 'Badan legislatif was successfully created.' }
        format.json { render :show, status: :created, location: @badan_legislatif }
      else
        format.html { render :new }
        format.json { render json: @badan_legislatif.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /badan_legislatifs/1
  # PATCH/PUT /badan_legislatifs/1.json
  def update
    respond_to do |format|
      if @badan_legislatif.update(badan_legislatif_params)
        format.html { redirect_to @badan_legislatif, notice: 'Badan legislatif was successfully updated.' }
        format.json { render :show, status: :ok, location: @badan_legislatif }
      else
        format.html { render :edit }
        format.json { render json: @badan_legislatif.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /badan_legislatifs/1
  # DELETE /badan_legislatifs/1.json
  def destroy
    @badan_legislatif.destroy
    respond_to do |format|
      format.html { redirect_to badan_legislatifs_url, notice: 'Badan legislatif was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_badan_legislatif
      @badan_legislatif = BadanLegislatif.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def badan_legislatif_params
      params.require(:badan_legislatif).permit(:level)
    end
end
