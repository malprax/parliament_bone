class BadanMusyawarahsController < ApplicationController
  before_action :set_badan_musyawarah, only: [:show, :edit, :update, :destroy]

  # GET /badan_musyawarahs
  # GET /badan_musyawarahs.json
  def index
    @badan_musyawarahs = BadanMusyawarah.all
  end

  # GET /badan_musyawarahs/1
  # GET /badan_musyawarahs/1.json
  def show
  end

  # GET /badan_musyawarahs/new
  def new
    @badan_musyawarah = BadanMusyawarah.new
  end

  # GET /badan_musyawarahs/1/edit
  def edit
  end

  # POST /badan_musyawarahs
  # POST /badan_musyawarahs.json
  def create
    @badan_musyawarah = BadanMusyawarah.new(badan_musyawarah_params)

    respond_to do |format|
      if @badan_musyawarah.save
        format.html { redirect_to @badan_musyawarah, notice: 'Badan musyawarah was successfully created.' }
        format.json { render :show, status: :created, location: @badan_musyawarah }
      else
        format.html { render :new }
        format.json { render json: @badan_musyawarah.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /badan_musyawarahs/1
  # PATCH/PUT /badan_musyawarahs/1.json
  def update
    respond_to do |format|
      if @badan_musyawarah.update(badan_musyawarah_params)
        format.html { redirect_to @badan_musyawarah, notice: 'Badan musyawarah was successfully updated.' }
        format.json { render :show, status: :ok, location: @badan_musyawarah }
      else
        format.html { render :edit }
        format.json { render json: @badan_musyawarah.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /badan_musyawarahs/1
  # DELETE /badan_musyawarahs/1.json
  def destroy
    @badan_musyawarah.destroy
    respond_to do |format|
      format.html { redirect_to badan_musyawarahs_url, notice: 'Badan musyawarah was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_badan_musyawarah
      @badan_musyawarah = BadanMusyawarah.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def badan_musyawarah_params
      params.require(:badan_musyawarah).permit(:level)
    end
end
