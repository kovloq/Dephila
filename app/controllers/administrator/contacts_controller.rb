class Administrator::ContactsController < ApplicationController
  before_action :set_administrator_contact, only: [:show, :edit, :update, :destroy]

  # GET /administrator/contacts
  # GET /administrator/contacts.json
  def index
    @administrator_contacts = Administrator::Contact.all
  end

  # GET /administrator/contacts/1
  # GET /administrator/contacts/1.json
  def show
  end

  # GET /administrator/contacts/new
  def new
    @administrator_contact = Administrator::Contact.new
  end

  # GET /administrator/contacts/1/edit
  def edit
  end

  # POST /administrator/contacts
  # POST /administrator/contacts.json
  def create
    @administrator_contact = Administrator::Contact.new(administrator_contact_params)

    respond_to do |format|
      if @administrator_contact.save
        format.html { redirect_to @administrator_contact, notice: 'Contact was successfully created.' }
        format.json { render :show, status: :created, location: @administrator_contact }
      else
        format.html { render :new }
        format.json { render json: @administrator_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /administrator/contacts/1
  # PATCH/PUT /administrator/contacts/1.json
  def update
    respond_to do |format|
      if @administrator_contact.update(administrator_contact_params)
        format.html { redirect_to @administrator_contact, notice: 'Contact was successfully updated.' }
        format.json { render :show, status: :ok, location: @administrator_contact }
      else
        format.html { render :edit }
        format.json { render json: @administrator_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /administrator/contacts/1
  # DELETE /administrator/contacts/1.json
  def destroy
    @administrator_contact.destroy
    respond_to do |format|
      format.html { redirect_to administrator_contacts_url, notice: 'Contact was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_administrator_contact
      @administrator_contact = Administrator::Contact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def administrator_contact_params
      params.fetch(:administrator_contact, {})
    end
end
