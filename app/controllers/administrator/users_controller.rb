class Administrator::UsersController < AdministratorController
  def index
    @user=User.all
    
  end

  def show
    @user=User.find params[:id]
  end

  def new
    @user=User.new
  end

  def edit
    @user=User.find params[:id]
  end

  def create
    @user = User.new(user_params)
    if @user.save
        redirect_to :controller => "administrator/users", :action => "index"
    else
      render :action => 'add'
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to :action => 'edit', :id => params[:id]
    else
      render :action => 'edit'
    end
  end

  def destroy
  end

  private

  def user_params
      params.require(:user).permit(:username,:password,:name,:email)
  end

end
