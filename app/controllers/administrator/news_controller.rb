class Administrator::NewsController < AdministratorController
  before_action :set_administrator_news, only: [:show, :edit, :update, :destroy]

  # GET /administrator/news
  # GET /administrator/news.json
  def index
    @administrator_news = Administrator::News.all
  end

  # GET /administrator/news/1
  # GET /administrator/news/1.json
  def show
  end

  # GET /administrator/news/new
  def new
    @administrator_news = Administrator::News.new
  end

  # GET /administrator/news/1/edit
  def edit
  end

  # POST /administrator/news
  # POST /administrator/news.json
  def create
    @administrator_news = Administrator::News.new(administrator_news_params)

    respond_to do |format|
      if @administrator_news.save
        format.html { redirect_to @administrator_news, notice: 'News was successfully created.' }
        format.json { render :show, status: :created, location: @administrator_news }
      else
        format.html { render :new }
        format.json { render json: @administrator_news.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /administrator/news/1
  # PATCH/PUT /administrator/news/1.json
  def update
    respond_to do |format|
      if @administrator_news.update(administrator_news_params)
        format.html { redirect_to @administrator_news, notice: 'News was successfully updated.' }
        format.json { render :show, status: :ok, location: @administrator_news }
      else
        format.html { render :edit }
        format.json { render json: @administrator_news.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /administrator/news/1
  # DELETE /administrator/news/1.json
  def destroy
    @administrator_news.destroy
    respond_to do |format|
      format.html { redirect_to administrator_news_index_url, notice: 'News was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_administrator_news
      @administrator_news = Administrator::News.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def administrator_news_params
      params.fetch(:administrator_news, {})
    end
end
