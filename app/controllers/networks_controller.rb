class NetworksController < ApplicationController
  before_action :set_network, only: [:show, :edit, :update, :destroy]

  def index
    @networks = Network.all
    respond_with(@networks)
  end

  def show
    respond_with(@network)
  end

  def new
    @network = Network.new
    respond_with(@network)
  end

  def edit
  end

  def create
    @network = Network.new(network_params)
    @network.save
    respond_with(@network)
  end

  def update
    @network.update(network_params)
    respond_with(@network)
  end

  def destroy
    @network.destroy
    respond_with(@network)
  end

  private
    def set_network
      @network = Network.find(params[:id])
    end

    def network_params
      params.require(:network).permit(:name, :code)
    end
end
