class CommisionsController < ApplicationController
  before_action :set_commision, only: [:edit, :update, :destroy]

  # GET /commisions
  # GET /commisions.json
  def index
    @commisions = Commision.all
  end

  # GET /commisions/1
  # GET /commisions/1.json
  def show
    @commision = Commision.find(params[:id])
    # @member_commision = MemberCommision.find(params[:member_commision_id])
    # @parliament = Parliament.
    @commisions = Commision.all
    @member_commisions = @commision.member_commisions

  end

  # GET /commisions/new
  def new
    @commision = Commision.new
  end

  # GET /commisions/1/edit
  def edit
  end

  # POST /commisions
  # POST /commisions.json
  def create
    @commision = Commision.new(commision_params)

    respond_to do |format|
      if @commision.save
        format.html { redirect_to commisions_path, notice: 'Commision was successfully created.' }
        format.json { render :show, status: :created, location: @commision }
      else
        format.html { render :new }
        format.json { render json: @commision.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /commisions/1
  # PATCH/PUT /commisions/1.json
  def update
    respond_to do |format|
      if @commision.update(commision_params)
        format.html { redirect_to commisions_path, notice: 'Commision was successfully updated.' }
        format.json { render :show, status: :ok, location: @commision }
      else
        format.html { render :edit }
        format.json { render json: @commision.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /commisions/1
  # DELETE /commisions/1.json
  def destroy
    @commision.destroy
    respond_to do |format|
      format.html { redirect_to commisions_url, notice: 'Commision was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_commision
      @commision = Commision.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def commision_params
      params.require(:commision).permit(:name, :position, :parliament_id)
    end
end
