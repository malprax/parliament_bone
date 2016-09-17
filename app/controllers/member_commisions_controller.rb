class MemberCommisionsController < ApplicationController
  before_action :set_member_commision, only: [:show, :edit, :update, :destroy]

  # GET /member_commisions
  # GET /member_commisions.json
  def index
    @member_commisions = MemberCommision.all
  end

  # GET /member_commisions/1
  # GET /member_commisions/1.json
  def show
  end

  # GET /member_commisions/new
  def new
    @member_commision = MemberCommision.new
  end

  # GET /member_commisions/1/edit
  def edit
  end

  # POST /member_commisions
  # POST /member_commisions.json
  def create
    @member_commision = MemberCommision.new(member_commision_params)

    respond_to do |format|
      if @member_commision.save
        format.html { redirect_to @member_commision, notice: 'Member commision was successfully created.' }
        format.json { render :show, status: :created, location: @member_commision }
      else
        format.html { render :new }
        format.json { render json: @member_commision.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /member_commisions/1
  # PATCH/PUT /member_commisions/1.json
  def update
    respond_to do |format|
      if @member_commision.update(member_commision_params)
        format.html { redirect_to @member_commision, notice: 'Member commision was successfully updated.' }
        format.json { render :show, status: :ok, location: @member_commision }
      else
        format.html { render :edit }
        format.json { render json: @member_commision.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /member_commisions/1
  # DELETE /member_commisions/1.json
  def destroy
    @member_commision.destroy
    respond_to do |format|
      format.html { redirect_to member_commisions_url, notice: 'Member commision was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_member_commision
      @member_commision = MemberCommision.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def member_commision_params
      params.require(:member_commision).permit(:parliament_id, :commision_id, :structural_id)
    end
end
