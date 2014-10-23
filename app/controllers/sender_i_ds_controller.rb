class SenderIDsController < ApplicationController
  before_action :set_sender_id, only: [:show, :edit, :update, :destroy]

  def index
    @sender_ids = SenderId.all
    respond_with(@sender_ids)
  end

  def show
    respond_with(@sender_id)
  end

  def new
    @sender_id = SenderId.new
    respond_with(@sender_id)
  end

  def edit
  end

  def create
    @sender_id = SenderId.new(sender_id_params)
    @sender_id.save
    respond_with(@sender_id)
  end

  def update
    @sender_id.update(sender_id_params)
    respond_with(@sender_id)
  end

  def destroy
    @sender_id.destroy
    respond_with(@sender_id)
  end

  private
    def set_sender_id
      @sender_id = SenderId.find(params[:id])
    end

    def sender_id_params
      params.require(:sender_id).permit(:aggregator_id, :sender_id)
    end
end
