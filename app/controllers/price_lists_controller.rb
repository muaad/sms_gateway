class PriceListsController < ApplicationController
  before_action :set_price_list, only: [:show, :edit, :update, :destroy]

  def index
    @price_lists = PriceList.all
    respond_with(@price_lists)
  end

  def show
    respond_with(@price_list)
  end

  def new
    @price_list = PriceList.new
    respond_with(@price_list)
  end

  def edit
  end

  def create
    @price_list = PriceList.new(price_list_params)
    @price_list.save
    respond_with(@price_list)
  end

  def update
    @price_list.update(price_list_params)
    respond_with(@price_list)
  end

  def destroy
    @price_list.destroy
    respond_with(@price_list)
  end

  private
    def set_price_list
      @price_list = PriceList.find(params[:id])
    end

    def price_list_params
      params.require(:price_list).permit(:credits_id, :cost_per_sms, :aggregator_id, :bind_detail_id)
    end
end
