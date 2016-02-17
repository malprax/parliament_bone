# == Schema Information
#
# Table name: badan_kehormatans
#
#  id                   :integer          not null, primary key
#  parliament_member_id :integer
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

class BadanKehormatansController < ApplicationController
  before_action :set_badan_kehormatan, only: [:show, :edit, :update, :destroy]

  # GET /badan_kehormatans
  # GET /badan_kehormatans.json
  def index
    @badan_kehormatans = BadanKehormatan.all
  end

  # GET /badan_kehormatans/1
  # GET /badan_kehormatans/1.json
  def show
  end

  # GET /badan_kehormatans/new
  def new
    @badan_kehormatan = BadanKehormatan.new
  end

  # GET /badan_kehormatans/1/edit
  def edit
  end

  # POST /badan_kehormatans
  # POST /badan_kehormatans.json
  def create
    @badan_kehormatan = BadanKehormatan.new(badan_kehormatan_params)

    respond_to do |format|
      if @badan_kehormatan.save
        format.html { redirect_to @badan_kehormatan, notice: 'Badan kehormatan was successfully created.' }
        format.json { render :show, status: :created, location: @badan_kehormatan }
      else
        format.html { render :new }
        format.json { render json: @badan_kehormatan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /badan_kehormatans/1
  # PATCH/PUT /badan_kehormatans/1.json
  def update
    respond_to do |format|
      if @badan_kehormatan.update(badan_kehormatan_params)
        format.html { redirect_to @badan_kehormatan, notice: 'Badan kehormatan was successfully updated.' }
        format.json { render :show, status: :ok, location: @badan_kehormatan }
      else
        format.html { render :edit }
        format.json { render json: @badan_kehormatan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /badan_kehormatans/1
  # DELETE /badan_kehormatans/1.json
  def destroy
    @badan_kehormatan.destroy
    respond_to do |format|
      format.html { redirect_to badan_kehormatans_url, notice: 'Badan kehormatan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_badan_kehormatan
      @badan_kehormatan = BadanKehormatan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def badan_kehormatan_params
      params.require(:badan_kehormatan).permit(:parliament_member_id)
    end
end
