class ContactController < ApplicationController
  def index
  	@contact = Contact.new
  end

  def create
  	@contact = Contact.new(contact_params)
    if @contact.save
        redirect_to :controller => "contact", :action => "index"
    else
      render 'index' , errors: @contact.errors.full_messages
    end
  end

  private 
  def contact_params
  	params.require(:contact).permit(:email, :name,:subject,:message)
  end
end
