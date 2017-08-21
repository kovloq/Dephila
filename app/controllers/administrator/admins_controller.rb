class Administrator::AdminsController < AdministratorController
  

  # GET /administrator/admins
  # GET /administrator/admins.json
  def index
    @admin = Admin.order(:id => :desc).page(params[:page]).per(10) 
  end

  # GET /administrator/admins/1
  # GET /administrator/admins/1.json
  def show
    @admin = Admin.find params[:id]
  end

  # GET /administrator/admins/new
  def new
    @admin = Admin.new
  end

  # GET /administrator/admins/1/edit
  def edit
    @admin = Admin.find params[:id]
  end

  # POST /administrator/admins
  # POST /administrator/admins.json
  def create
    params[:admin][:password]=Digest::SHA1.hexdigest(params[:admin][:password]);
    @admin = Admin.new(admin_params)
    if @admin.save
        redirect_to :controller => "administrator/admins", :action => "index"
    else
      render :action => 'add'
    end
  end

  # PATCH/PUT /administrator/admins/1
  # PATCH/PUT /administrator/admins/1.json
  def update
    @admin = Admin.find(params[:id])
    if @admin.update_attributes(params[:admin])
      redirect_to :action => 'edit', :id => params[:id]
    else
      render :action => 'edit'
    end
  end

  # DELETE /administrator/admins/1
  # DELETE /administrator/admins/1.json
  def destroy
     @admin=Admin.find params[:id]
      @admin.destroy
      flash[:success]="Deleted"
      redirect_to :controller => "administrator/admins", :action => "index"
  end

  private
   

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_params
      params.require(:admin).permit(:username,:password,:name,:email)
    end
end
