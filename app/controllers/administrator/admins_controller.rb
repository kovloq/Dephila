class Administrator::AdminsController < ApplicationController
  before_action :set_administrator_admin, only: [:show, :edit, :update, :destroy]

  # GET /administrator/admins
  # GET /administrator/admins.json
  def index
    @administrator_admins = Administrator::Admin.all
  end

  # GET /administrator/admins/1
  # GET /administrator/admins/1.json
  def show
  end

  # GET /administrator/admins/new
  def new
    @administrator_admin = Administrator::Admin.new
  end

  # GET /administrator/admins/1/edit
  def edit
  end

  # POST /administrator/admins
  # POST /administrator/admins.json
  def create
    @administrator_admin = Administrator::Admin.new(administrator_admin_params)

    respond_to do |format|
      if @administrator_admin.save
        format.html { redirect_to @administrator_admin, notice: 'Admin was successfully created.' }
        format.json { render :show, status: :created, location: @administrator_admin }
      else
        format.html { render :new }
        format.json { render json: @administrator_admin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /administrator/admins/1
  # PATCH/PUT /administrator/admins/1.json
  def update
    respond_to do |format|
      if @administrator_admin.update(administrator_admin_params)
        format.html { redirect_to @administrator_admin, notice: 'Admin was successfully updated.' }
        format.json { render :show, status: :ok, location: @administrator_admin }
      else
        format.html { render :edit }
        format.json { render json: @administrator_admin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /administrator/admins/1
  # DELETE /administrator/admins/1.json
  def destroy
    @administrator_admin.destroy
    respond_to do |format|
      format.html { redirect_to administrator_admins_url, notice: 'Admin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_administrator_admin
      @administrator_admin = Administrator::Admin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def administrator_admin_params
      params.fetch(:administrator_admin, {})
    end
end
