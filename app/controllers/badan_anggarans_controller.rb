class BadanAnggaransController < ApplicationController
  before_action :set_badan_anggaran, only: [:show, :edit, :update, :destroy]

  # GET /badan_anggarans
  # GET /badan_anggarans.json
  def index
    @badan_anggarans = BadanAnggaran.all
  end

  # GET /badan_anggarans/1
  # GET /badan_anggarans/1.json
  def show
  end

  # GET /badan_anggarans/new
  def new
    @badan_anggaran = BadanAnggaran.new
  end

  # GET /badan_anggarans/1/edit
  def edit
  end

  # POST /badan_anggarans
  # POST /badan_anggarans.json
  def create
    @badan_anggaran = BadanAnggaran.new(badan_anggaran_params)

    respond_to do |format|
      if @badan_anggaran.save
        format.html { redirect_to @badan_anggaran, notice: 'Badan anggaran was successfully created.' }
        format.json { render :show, status: :created, location: @badan_anggaran }
      else
        format.html { render :new }
        format.json { render json: @badan_anggaran.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /badan_anggarans/1
  # PATCH/PUT /badan_anggarans/1.json
  def update
    respond_to do |format|
      if @badan_anggaran.update(badan_anggaran_params)
        format.html { redirect_to @badan_anggaran, notice: 'Badan anggaran was successfully updated.' }
        format.json { render :show, status: :ok, location: @badan_anggaran }
      else
        format.html { render :edit }
        format.json { render json: @badan_anggaran.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /badan_anggarans/1
  # DELETE /badan_anggarans/1.json
  def destroy
    @badan_anggaran.destroy
    respond_to do |format|
      format.html { redirect_to badan_anggarans_url, notice: 'Badan anggaran was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_badan_anggaran
      @badan_anggaran = BadanAnggaran.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def badan_anggaran_params
      params.require(:badan_anggaran).permit(:level)
    end
end
