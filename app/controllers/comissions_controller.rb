class ComissionsController < ApplicationController
  before_action :set_comission, only: [:show, :edit, :update, :destroy]
  before_action :set_parliament_member, only: [:new, :create, :edit, :update, :destroy]

  # GET /comissions
  # GET /comissions.json
  def index
    @comissions = Comission.order('created_at desc')
  end

  # GET /comissions/1
  # GET /comissions/1.json
  def show
      @parliament_members = ParliamentMember.order('created_at desc')
  end

  # GET /comissions/new
  def new
    @comission = @parliament_member.comissions.build
  end

  # GET /comissions/1/edit
  def edit
  end

  # POST /comissions
  # POST /comissions.json
  def create
    @comission = @parliament_member.comissions.create(comission_params)
    # @comission = Comission.new(comission_params)

    respond_to do |format|
      if @comission.save
        format.html { redirect_to parliament_member_path(@parliament_member), notice: 'Comission was successfully created.' }
        format.json { render :show, status: :created, location: @comission }
      else
        format.html { render :new }
        format.json { render json: @comission.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comissions/1
  # PATCH/PUT /comissions/1.json
  def update
    respond_to do |format|
      if @comission.update(comission_params)
        format.html { redirect_to parliament_member_path(@parliament_member), notice: 'Comission was successfully updated.' }
        format.json { render :show, status: :ok, location: @comission }
      else
        format.html { render :edit }
        format.json { render json: @comission.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comissions/1
  # DELETE /comissions/1.json
  def destroy
    @comission.destroy
    respond_to do |format|
      format.html { redirect_to comissions_url, notice: 'Comission was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comission
      @comissions = Comission.order('created_at desc')
      @comission = Comission.find(params[:id])
    end

    def set_parliament_member
      @parliament_member = ParliamentMember.find(params[:parliament_member_id])
      # @comission = Comission.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comission_params
      params.require(:comission).permit(:name, :code, :parliament_member_id, :comment)
    end
end
