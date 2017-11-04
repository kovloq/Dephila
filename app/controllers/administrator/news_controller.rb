class Administrator::NewsController < AdministratorController
  # before_action :set_administrator_news, only: [:show, :edit, :update, :destroy]

  # GET /administrator/news
  # GET /administrator/news.json
  def index
    @news = News.all
  end

  def show
    @news = News.find params[:id]
  end

  def edit
    @news = News.find params[:id]
  end

  def new 
  	@news=News.new
  end

  def create
    @news = News.new(news_params)
    if @news.save
        redirect_to :controller => "administrator/news", :action => "index"
    else
      render :action => 'add'
    end
  end

  # PATCH/PUT /administrator/admins/1
  # PATCH/PUT /administrator/admins/1.json
  def update
    @news = News.find(params[:id])
    if @news.update_attributes(params[:news])
      redirect_to :action => 'edit', :id => params[:id]
    else
      render :action => 'edit'
    end
  end

  # DELETE /administrator/admins/1
  # DELETE /administrator/admins/1.json
  def destroy
     @news=News.find params[:id]
      @news.destroy
      flash[:success]="Deleted"
      redirect_to :controller => "administrator/news", :action => "index"
  end

  private
   

    # Never trust parameters from the scary internet, only allow the white list through.
    def news_params
      params.require(:news).permit(:title,:content)
    end

end
