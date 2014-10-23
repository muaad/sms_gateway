class AggregatorsController < ApplicationController
  before_action :set_aggregator, only: [:show, :edit, :update, :destroy]

  def index
    @aggregators = Aggregator.all
    respond_with(@aggregators)
  end

  def show
    respond_with(@aggregator)
  end

  def new
    @aggregator = Aggregator.new
    respond_with(@aggregator)
  end

  def edit
  end

  def create
    @aggregator = Aggregator.new(aggregator_params)
    @aggregator.save
    respond_with(@aggregator)
  end

  def update
    @aggregator.update(aggregator_params)
    respond_with(@aggregator)
  end

  def destroy
    @aggregator.destroy
    respond_with(@aggregator)
  end

  private
    def set_aggregator
      @aggregator = Aggregator.find(params[:id])
    end

    def aggregator_params
      params.require(:aggregator).permit(:name, :code)
    end
end
