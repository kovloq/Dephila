class Administrator::HotelsController < AdministratorController
  before_action :set_administrator_hotel, only: [:show, :edit, :update, :destroy]

  # GET /administrator/hotels
  # GET /administrator/hotels.json
  def index
    @administrator_hotels = Administrator::Hotel.all
  end

  # GET /administrator/hotels/1
  # GET /administrator/hotels/1.json
  def show
  end

  # GET /administrator/hotels/new
  def new
    @administrator_hotel = Administrator::Hotel.new
  end

  # GET /administrator/hotels/1/edit
  def edit
  end

  # POST /administrator/hotels
  # POST /administrator/hotels.json
  def create
    @administrator_hotel = Administrator::Hotel.new(administrator_hotel_params)

    respond_to do |format|
      if @administrator_hotel.save
        format.html { redirect_to @administrator_hotel, notice: 'Hotel was successfully created.' }
        format.json { render :show, status: :created, location: @administrator_hotel }
      else
        format.html { render :new }
        format.json { render json: @administrator_hotel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /administrator/hotels/1
  # PATCH/PUT /administrator/hotels/1.json
  def update
    respond_to do |format|
      if @administrator_hotel.update(administrator_hotel_params)
        format.html { redirect_to @administrator_hotel, notice: 'Hotel was successfully updated.' }
        format.json { render :show, status: :ok, location: @administrator_hotel }
      else
        format.html { render :edit }
        format.json { render json: @administrator_hotel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /administrator/hotels/1
  # DELETE /administrator/hotels/1.json
  def destroy
    @administrator_hotel.destroy
    respond_to do |format|
      format.html { redirect_to administrator_hotels_url, notice: 'Hotel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_administrator_hotel
      @administrator_hotel = Administrator::Hotel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def administrator_hotel_params
      params.fetch(:administrator_hotel, {})
    end
end
