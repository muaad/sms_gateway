class SmsController < ApplicationController
  before_action :set_sm, only: [:show, :edit, :update, :destroy]

  def index
    @sms = Sm.all
    respond_with(@sms)
  end

  def show
    respond_with(@sm)
  end

  def new
    @sm = Sm.new
    respond_with(@sm)
  end

  def edit
  end

  def create
    @sm = Sm.new(sm_params)
    @sm.save
    respond_with(@sm)
  end

  def update
    @sm.update(sm_params)
    respond_with(@sm)
  end

  def destroy
    @sm.destroy
    respond_with(@sm)
  end

  private
    def set_sm
      @sm = Sm.find(params[:id])
    end

    def sm_params
      params.require(:sm).permit(:message, :delivery_status, :messageid, :phonebook_id, :cost, :send_time, :delivery_time, :latency)
    end
end
