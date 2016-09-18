class MemberFractionsController < ApplicationController
  before_action :set_member_fraction, only: [:show, :edit, :update, :destroy]

  # GET /member_fractions
  # GET /member_fractions.json
  def index
    @member_fractions = MemberFraction.all
  end

  # GET /member_fractions/1
  # GET /member_fractions/1.json
  def show
  end

  # GET /member_fractions/new
  def new
    @member_fraction = MemberFraction.new
  end

  # GET /member_fractions/1/edit
  def edit
  end

  # POST /member_fractions
  # POST /member_fractions.json
  def create
    @member_fraction = MemberFraction.new(member_fraction_params)

    respond_to do |format|
      if @member_fraction.save
        format.html { redirect_to member_fractions_path, notice: 'Member fraction was successfully created.' }
        format.json { render :show, status: :created, location: @member_fraction }
      else
        format.html { render :new }
        format.json { render json: @member_fraction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /member_fractions/1
  # PATCH/PUT /member_fractions/1.json
  def update
    respond_to do |format|
      if @member_fraction.update(member_fraction_params)
        format.html { redirect_to member_fractions_path, notice: 'Member fraction was successfully updated.' }
        format.json { render :show, status: :ok, location: @member_fraction }
      else
        format.html { render :edit }
        format.json { render json: @member_fraction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /member_fractions/1
  # DELETE /member_fractions/1.json
  def destroy
    @member_fraction.destroy
    respond_to do |format|
      format.html { redirect_to member_fractions_url, notice: 'Member fraction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_member_fraction
      @member_fraction = MemberFraction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def member_fraction_params
      params.require(:member_fraction).permit(:parliament_id, :structural_id, :fraction_id)
    end
end
