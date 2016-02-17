# == Schema Information
#
# Table name: structure_fractions
#
#  id                   :integer          not null, primary key
#  fraction_id          :integer
#  parliament_member_id :integer
#  level_id             :integer
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

class StructureFractionsController < ApplicationController
  before_action :set_structure_fraction, only: [:show, :edit, :update, :destroy]
  before_action :set_fraction, only: [:new, :create, :edit, :update, :destroy ]

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
    @structure_fraction = @fraction.structure_fractions.build
    @levels = Level.all
  end

  # GET /structure_fractions/1/edit
  def edit
  end

  # POST /structure_fractions
  # POST /structure_fractions.json
  def create
    # @structure_fraction = StructureFraction.new(structure_fraction_params)
    @structure_fraction = @fraction.structure_fractions.create(structure_fraction_params)
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
        format.html { redirect_to fraction_path(@fraction), notice: 'Structure fraction was successfully updated.' }
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
      @structure_fractions = StructureFraction.all
      @structure_fraction = @fraction.structure_fractions.find(params[:id])
    end

    def set_fraction
      @fraction = Fraction.find(params[:fraction_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def structure_fraction_params
      params[:structure_fraction].permit(:fraction_id, :levels_attributes => [], :parliament_members_attributes => [])
    end
end
