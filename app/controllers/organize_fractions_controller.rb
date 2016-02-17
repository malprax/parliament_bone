# == Schema Information
#
# Table name: organize_fractions
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class OrganizeFractionsController < ApplicationController
  before_action :set_organize_fraction, only: [:show, :edit, :update, :destroy]

  # GET /organize_fractions
  # GET /organize_fractions.json
  def index
    @organize_fractions = OrganizeFraction.all
  end

  # GET /organize_fractions/1
  # GET /organize_fractions/1.json
  def show
  end

  # GET /organize_fractions/new
  def new
    @organize_fraction = OrganizeFraction.new
  end

  # GET /organize_fractions/1/edit
  def edit
  end

  # POST /organize_fractions
  # POST /organize_fractions.json
  def create
    @organize_fraction = OrganizeFraction.new(organize_fraction_params)

    respond_to do |format|
      if @organize_fraction.save
        format.html { redirect_to @organize_fraction, notice: 'Organize fraction was successfully created.' }
        format.json { render :show, status: :created, location: @organize_fraction }
      else
        format.html { render :new }
        format.json { render json: @organize_fraction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /organize_fractions/1
  # PATCH/PUT /organize_fractions/1.json
  def update
    respond_to do |format|
      if @organize_fraction.update(organize_fraction_params)
        format.html { redirect_to @organize_fraction, notice: 'Organize fraction was successfully updated.' }
        format.json { render :show, status: :ok, location: @organize_fraction }
      else
        format.html { render :edit }
        format.json { render json: @organize_fraction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /organize_fractions/1
  # DELETE /organize_fractions/1.json
  def destroy
    @organize_fraction.destroy
    respond_to do |format|
      format.html { redirect_to organize_fractions_url, notice: 'Organize fraction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_organize_fraction
      @organize_fraction = OrganizeFraction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def organize_fraction_params
      params.require(:organize_fraction).permit(:name)
    end
end
