class CreditsController < ApplicationController
  before_action :set_credit, only: [:show, :edit, :update, :destroy]

  def index
    @credits = Credit.all
    respond_with(@credits)
  end

  def show
    respond_with(@credit)
  end

  def new
    @credit = Credit.new
    respond_with(@credit)
  end

  def edit
  end

  def create
    @credit = Credit.new(credit_params)
    @credit.save
    respond_with(@credit)
  end

  def update
    @credit.update(credit_params)
    respond_with(@credit)
  end

  def destroy
    @credit.destroy
    respond_with(@credit)
  end

  private
    def set_credit
      @credit = Credit.find(params[:id])
    end

    def credit_params
      params.require(:credit).permit(:amount, :currency, :aggregator_id)
    end
end
