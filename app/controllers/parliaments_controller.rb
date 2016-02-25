class ParliamentsController < ApplicationController
  before_action :set_parliament, only: [:show, :edit, :update, :destroy]

  # GET /parliaments
  # GET /parliaments.json
  def index
    @parliaments = Parliament.all
  end

  # GET /parliaments/1
  # GET /parliaments/1.json
  def show
  end

  # GET /parliaments/new
  def new
    @parliament = Parliament.new
  end

  # GET /parliaments/1/edit
  def edit
  end

  # POST /parliaments
  # POST /parliaments.json
  def create
    @parliament = Parliament.new(parliament_params)

    respond_to do |format|
      if @parliament.save
        format.html { redirect_to @parliament, notice: 'Parliament was successfully created.' }
        format.json { render :show, status: :created, location: @parliament }
      else
        format.html { render :new }
        format.json { render json: @parliament.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parliaments/1
  # PATCH/PUT /parliaments/1.json
  def update
    respond_to do |format|
      if @parliament.update(parliament_params)
        format.html { redirect_to @parliament, notice: 'Parliament was successfully updated.' }
        format.json { render :show, status: :ok, location: @parliament }
      else
        format.html { render :edit }
        format.json { render json: @parliament.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parliaments/1
  # DELETE /parliaments/1.json
  def destroy
    @parliament.destroy
    respond_to do |format|
      format.html { redirect_to parliaments_url, notice: 'Parliament was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parliament
      @parliament = Parliament.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def parliament_params
      params.require(:parliament).permit(:name, :dapil, :fraksi, :jabatan_fraksi, :komisi, :jabatan_komisi, :jabatan_badan_anggaran, :jabatan_badan_musyawarah, :jabatan_badan_kehormatan, :jabatan_badan_legislatif)
    end
end