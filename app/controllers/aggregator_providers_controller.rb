class AggregatorProvidersController < ApplicationController
  before_action :set_aggregator_provider, only: [:show, :edit, :update, :destroy]

  def index
    @aggregator_providers = AggregatorProvider.all
    respond_with(@aggregator_providers)
  end

  def show
    respond_with(@aggregator_provider)
  end

  def new
    @aggregator_provider = AggregatorProvider.new
    respond_with(@aggregator_provider)
  end

  def edit
  end

  def create
    @aggregator_provider = AggregatorProvider.new(aggregator_provider_params)
    @aggregator_provider.save
    respond_with(@aggregator_provider)
  end

  def update
    @aggregator_provider.update(aggregator_provider_params)
    respond_with(@aggregator_provider)
  end

  def destroy
    @aggregator_provider.destroy
    respond_with(@aggregator_provider)
  end

  private
    def set_aggregator_provider
      @aggregator_provider = AggregatorProvider.find(params[:id])
    end

    def aggregator_provider_params
      params.require(:aggregator_provider).permit(:aggregator_id, :provider_id)
    end
end
