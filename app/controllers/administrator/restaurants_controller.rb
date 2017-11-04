class Administrator::RestaurantsController < AdministratorController
  

  # GET /administrator/news
  # GET /administrator/news.json
  def index
    @restaurant = Restaurant.all
  end

  # GET /administrator/news/1
  # GET /administrator/news/1.json
  def show
  end

  # GET /administrator/news/new
  def new
    @restaurant = Restaurant.new
  end

  # GET /administrator/news/1/edit
  def edit
  end
end
