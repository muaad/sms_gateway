class NetworkContactsController < ApplicationController
  before_action :set_network_contact, only: [:show, :edit, :update, :destroy]

  def index
    @network_contacts = NetworkContact.all
    respond_with(@network_contacts)
  end

  def show
    respond_with(@network_contact)
  end

  def new
    @network_contact = NetworkContact.new
    respond_with(@network_contact)
  end

  def edit
  end

  def create
    @network_contact = NetworkContact.new(network_contact_params)
    @network_contact.save
    respond_with(@network_contact)
  end

  def update
    @network_contact.update(network_contact_params)
    respond_with(@network_contact)
  end

  def destroy
    @network_contact.destroy
    respond_with(@network_contact)
  end

  private
    def set_network_contact
      @network_contact = NetworkContact.find(params[:id])
    end

    def network_contact_params
      params.require(:network_contact).permit(:phonebook_id, :email, :location, :network_id)
    end
end
