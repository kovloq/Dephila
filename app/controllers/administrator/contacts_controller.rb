class Administrator::ContactsController < AdministratorController
  before_action :set_administrator_contact, only: [:show, :edit, :update, :destroy]

  # GET /administrator/contacts
  # GET /administrator/contacts.json
  def index
    @contacts = Contact.all
  end

  # # GET /administrator/contacts/1
  # # GET /administrator/contacts/1.json
  def show
  end

  # # GET /administrator/contacts/new
  def new
    @contact = Contact.new
  end

  # # GET /administrator/contacts/1/edit
  def edit
  end

  # # POST /administrator/contacts
  # # POST /administrator/contacts.json
  def create
    
  end

  # # PATCH/PUT /administrator/contacts/1
  # # PATCH/PUT /administrator/contacts/1.json
  def update
   
  end

  # # DELETE /administrator/contacts/1
  # # DELETE /administrator/contacts/1.json
  def destroy
   
  end

  private
  #   # Use callbacks to share common setup or constraints between actions.
    def set_administrator_contact
      @contact = Contact.find(params[:id])
    end

  #   # Never trust parameters from the scary internet, only allow the white list through.
    def contact_params
      params.fetch(:contact, {})
    end
end
