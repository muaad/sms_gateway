class AggregatorIpsController < ApplicationController
  before_action :set_aggregator_ip, only: [:show, :edit, :update, :destroy]

  def index
    @aggregator_ips = AggregatorIp.all
    respond_with(@aggregator_ips)
  end

  def show
    respond_with(@aggregator_ip)
  end

  def new
    @aggregator_ip = AggregatorIp.new
    respond_with(@aggregator_ip)
  end

  def edit
  end

  def create
    @aggregator_ip = AggregatorIp.new(aggregator_ip_params)
    @aggregator_ip.save
    respond_with(@aggregator_ip)
  end

  def update
    @aggregator_ip.update(aggregator_ip_params)
    respond_with(@aggregator_ip)
  end

  def destroy
    @aggregator_ip.destroy
    respond_with(@aggregator_ip)
  end

  private
    def set_aggregator_ip
      @aggregator_ip = AggregatorIp.find(params[:id])
    end

    def aggregator_ip_params
      params.require(:aggregator_ip).permit(:ip_address, :aggregator_id, :whitlisted)
    end
end
