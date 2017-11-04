class Administrator::LoginController < ApplicationController
	layout false

  def index
  	@admin=Admin.new
    @password=Digest::SHA1.hexdigest("admin");
  end

  def login
  	username=params[:admin][:username];
  	password=Digest::SHA1.hexdigest(params[:admin][:password]);
  	cek=Admin.where(username: username).where(password: password).first()
  	# puts cek.to_sql
    session[:id_admin] = 1
      session[:admin_name] = "admin"
      session[:admin_email]="email@email.com"
  	# if(cek)
  	# 	session[:id_admin] = cek[:id]
  	# 	session[:admin_name] = cek[:name]
  	# 	session[:admin_email]=cek[:email]
  	# 	# flash[:success] = "Valid"
  		
  		redirect_to :controller => "administrator/home", :action => "index"
  	# else
  	# 	flash[:danger] = "Invalid Username or Password"
  	# 	redirect_to :controller => "administrator/login", :action => "index"
  	# end
  end

  def logout
  	session.delete(:id_admin);
  	session.delete(:admin_name);
  	session.delete(:admin_email);
  	redirect_to :controller => "administrator/login", :action => "index"
  end

  
end
