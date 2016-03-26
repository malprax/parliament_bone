# == Schema Information
#
# Table name: parliaments
#
#  id                       :integer          not null, primary key
#  name                     :string
#  dapil                    :string
#  fraksi                   :string
#  jabatan_fraksi           :string
#  komisi                   :string
#  jabatan_komisi           :string
#  jabatan_badan_anggaran   :string
#  jabatan_badan_musyawarah :string
#  jabatan_badan_kehormatan :string
#  jabatan_badan_legislatif :string
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#

class ParliamentsController < ApplicationController
  before_action :set_parliament, only: [:show, :edit, :update, :destroy]
  # load_and_authorize_resource
  # before_action :authenticate_user!, except: [:index]

  def upload
    #code
    Parliament.import(params[:file])
    redirect_to :back, notice: "Data Berhasil Diupload"
  end

  # GET /parliaments
  # GET /parliaments.json
  def index
    @parliaments = Parliament.paginate(:page => params[:page], :per_page => 9)
    @allparliaments = Parliament.order("created_at asc")
    respond_to do |format|
        format.html # don't forget if you pass html
        # format.xls { send_data(@allparliaments.to_xls) }
        format.xls {
          filename = "Wakil_Rakyat_DPRD_Bone.xls"
          urut_tabel = [:name, :dapil, :fraksi, :jabatan_fraksi]
          send_data(@allparliaments.to_xls(:only => urut_tabel), :type => "text/xls; charset=utf-8; header=present", :filename => filename)
        }
    end

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
    @parliament.avatar = nil
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
      params.require(:parliament).permit(:name, :dapil, :fraksi, :jabatan_fraksi, :komisi, :jabatan_komisi, :jabatan_badan_anggaran, :jabatan_badan_musyawarah, :jabatan_badan_kehormatan, :jabatan_badan_legislatif, :avatar, :file)
    end
end
