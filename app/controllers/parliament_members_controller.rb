class ParliamentMembersController < ApplicationController
  before_action :set_parliament_member, only: [:show, :edit, :update, :destroy]
  # before_action :set_fraction, only: [:new, :create, :edit, :update, :destroy ]

  # GET /parliament_members
  # GET /parliament_members.json
  def index
    @parliament_members = ParliamentMember.all
  end

  # GET /parliament_members/1
  # GET /parliament_members/1.json
  def show
    #  @fraction = Fraction.order('created_at desc')
  end

  # GET /parliament_members/new
  def new
    @parliament_member = @fraction.parliament_members.build
  end

  # GET /parliament_members/1/edit
  def edit
  end

  # POST /parliament_members
  # POST /parliament_members.json
  def create
    # @parliament_member = @fraction.parliament_members.create(parliament_member_params)
    @parliament_member = ParliamentMember.new(parliament_member_params)

    respond_to do |format|
      if @parliament_member.save
        format.html { redirect_to @parliament_member, notice: 'Parliament member was successfully created.' }
        format.json { render :show, status: :created, location: @parliament_member }
      else
        format.html { render :new }
        format.json { render json: @parliament_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parliament_members/1
  # PATCH/PUT /parliament_members/1.json
  def update
    respond_to do |format|
      if @parliament_member.update(parliament_member_params)
        format.html { redirect_to @parliament_member, notice: 'Parliament member was successfully updated.' }
        format.json { render :show, status: :ok, location: @parliament_member }
      else
        format.html { render :edit }
        format.json { render json: @parliament_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parliament_members/1
  # DELETE /parliament_members/1.json
  def destroy
    @parliament_member.destroy
    respond_to do |format|
      format.html { redirect_to parliament_members_url, notice: 'Parliament member was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    # def set_fraction
    #   @fraction = Fraction.find(params[:fraction_id])
    # end

    def set_parliament_member
      @parliament_member = ParliamentMember.find(params[:id])
      @parliament_members = ParliamentMember.all
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def parliament_member_params
      params.require(:parliament_member).permit(:name, :fraksi, :dapil, :fraction_ids => [] )
    end
end
