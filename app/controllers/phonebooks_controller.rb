class PhonebooksController < ApplicationController
  before_action :set_phonebook, only: [:show, :edit, :update, :destroy]

  def index
    @phonebooks = Phonebook.all
    respond_with(@phonebooks)
  end

  def show
    respond_with(@phonebook)
  end

  def new
    @phonebook = Phonebook.new
    respond_with(@phonebook)
  end

  def edit
  end

  def create
    @phonebook = Phonebook.new(phonebook_params)
    @phonebook.save
    respond_with(@phonebook)
  end

  def update
    @phonebook.update(phonebook_params)
    respond_with(@phonebook)
  end

  def destroy
    @phonebook.destroy
    respond_with(@phonebook)
  end

  private
    def set_phonebook
      @phonebook = Phonebook.find(params[:id])
    end

    def phonebook_params
      params.require(:phonebook).permit(:number, :surname, :other_names, :group_id, :country_id)
    end
end
