class BindDetailsController < ApplicationController
  before_action :set_bind_detail, only: [:show, :edit, :update, :destroy]

  def index
    @bind_details = BindDetail.all
    respond_with(@bind_details)
  end

  def show
    respond_with(@bind_detail)
  end

  def new
    @bind_detail = BindDetail.new
    respond_with(@bind_detail)
  end

  def edit
  end

  def create
    @bind_detail = BindDetail.new(bind_detail_params)
    @bind_detail.save
    respond_with(@bind_detail)
  end

  def update
    @bind_detail.update(bind_detail_params)
    respond_with(@bind_detail)
  end

  def destroy
    @bind_detail.destroy
    respond_with(@bind_detail)
  end

  private
    def set_bind_detail
      @bind_detail = BindDetail.find(params[:id])
    end

    def bind_detail_params
      params.require(:bind_detail).permit(:host_ip, :port, :smpp_version, :username, :password, :aggregator_id)
    end
end
