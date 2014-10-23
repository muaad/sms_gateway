class AggregatorCountriesController < ApplicationController
  before_action :set_aggregator_country, only: [:show, :edit, :update, :destroy]

  def index
    @aggregator_countries = AggregatorCountry.all
    respond_with(@aggregator_countries)
  end

  def show
    respond_with(@aggregator_country)
  end

  def new
    @aggregator_country = AggregatorCountry.new
    respond_with(@aggregator_country)
  end

  def edit
  end

  def create
    @aggregator_country = AggregatorCountry.new(aggregator_country_params)
    @aggregator_country.save
    respond_with(@aggregator_country)
  end

  def update
    @aggregator_country.update(aggregator_country_params)
    respond_with(@aggregator_country)
  end

  def destroy
    @aggregator_country.destroy
    respond_with(@aggregator_country)
  end

  private
    def set_aggregator_country
      @aggregator_country = AggregatorCountry.find(params[:id])
    end

    def aggregator_country_params
      params.require(:aggregator_country).permit(:aggregator_id, :country_id)
    end
end
