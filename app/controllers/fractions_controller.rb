class FractionsController < ApplicationController
  before_action :set_fraction, only: [:show, :edit, :update, :destroy]

  # GET /fractions
  # GET /fractions.json
  def index
    @fractions = Fraction.all
  end

  # GET /fractions/1
  # GET /fractions/1.json
  def show
    @parliament_members = ParliamentMember.order('created_at desc')
  end

  # GET /fractions/new
  def new
    @fraction = Fraction.new
  end

  # GET /fractions/1/edit
  def edit
  end

  # POST /fractions
  # POST /fractions.json
  def create
    @fraction = Fraction.new(fraction_params)
    # @parliament_members = ParliamentMember.where(:id => params[:parliament_member])
    # @fraction.parliament_members << @parliament_members

    respond_to do |format|
      if @fraction.save
        format.html { redirect_to @fraction, notice: 'Fraction was successfully created.' }
        format.json { render :show, status: :created, location: @fraction }
      else
        format.html { render :new }
        format.json { render json: @fraction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fractions/1
  # PATCH/PUT /fractions/1.json
  def update
    @fraction = Fraction.find(params[:id])
    # @fraction = Fraction.new(fraction_params)
    # @parliament_members = ParliamentMember.where(:id => params[:parliament_member])
    # @fraction.parliament_members << @parliament_members
    respond_to do |format|
      if @fraction.update(fraction_params)
        format.html { redirect_to @fraction, notice: 'Fraction was successfully updated.' }
        format.json { render :show, status: :ok, location: @fraction }
      else
        format.html { render :edit }
        format.json { render json: @fraction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fractions/1
  # DELETE /fractions/1.json
  def destroy
    @fraction.destroy
    respond_to do |format|
      format.html { redirect_to fractions_url, notice: 'Fraction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fraction
      @fraction = Fraction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fraction_params
      params.require(:fraction).permit(:name, :parliament_member_ids => [])
    end
end
