# == Schema Information
#
# Table name: information
#
#  id         :integer          not null, primary key
#  title      :string
#  content    :text
#  image      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class InformationController < ApplicationController
  before_action :set_information, only: [:show, :edit, :update, :destroy]
  # load_and_authorize_resource
  # before_action :authenticate_user!, except: [:index]


  #root
  def home
    #code
  end
  # GET /information
  # GET /information.json
  def index
    @informations = Information.order('created_at desc')
    @information_sort_date = @informations.group_by{|info|info.created_at }
  end

  # GET /information/1
  # GET /information/1.json
  def show
  end

  def information_show
    #code
    @information = Information.find(params[:information_id])
    respond_to do |format|
      format.html
      format.js
    end
  end

  # GET /information/new
  def new
    @information = Information.new
  end

  # GET /information/1/edit
  def edit
  end

  # POST /information
  # POST /information.json
  def create
    @informations = Information.order('created_at desc')
    @information = Information.new(information_params)

    respond_to do |format|
      if @information.save
        format.html { redirect_to kegiatan_path, notice: 'Information was successfully created.' }
        format.json { render :show, status: :created, location: @information }
      else
        format.html { render :new }
        format.json { render json: @information.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /information/1
  # PATCH/PUT /information/1.json
  def update
    @informations = Information.order('created_at desc')
    respond_to do |format|
      if @information.update(information_params)
        format.html { redirect_to kegiatan_path, notice: 'Information was successfully updated.' }
        format.json { render :show, status: :ok, location: @information }
      else
        format.html { render :edit }
        format.json { render json: @information.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /information/1
  # DELETE /information/1.json
  def delete
    #code
    @information = Information.find(params[:information_id])
  end
  def destroy
    @informations = Information.order('created_at desc')
    @information.destroy
    respond_to do |format|
      format.html { redirect_to information_index_url, notice: 'Information was successfully destroyed.' }
      format.js
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_information
      @information = Information.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def information_params
      params.require(:information).permit(:title, :content, :image)
    end
end
