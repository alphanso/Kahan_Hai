class ChainOfStoresController < ApplicationController
  before_action :set_chain_of_store, only: [:show, :edit, :update, :destroy]
  respond_to :html, :json

  def index
    @chain_of_stores = ChainOfStore.all
    respond_with(@chain_of_stores)
  end

  def show
    respond_with(@chain_of_store)
  end

  def new
    @chain_of_store = ChainOfStore.new
    respond_with(@chain_of_store)
  end

  def edit
  end

  def create
    @chain_of_store = ChainOfStore.new(chain_of_store_params)
    @chain_of_store.save
    respond_with(@chain_of_store)
  end

  def update
    @chain_of_store.update(chain_of_store_params)
    respond_with(@chain_of_store)
  end

  def destroy
    @chain_of_store.destroy
    respond_with(@chain_of_store)
  end

  private
    def set_chain_of_store
      @chain_of_store = ChainOfStore.find(params[:id])
    end

    def chain_of_store_params
      params.require(:chain_of_store).permit(:name, :type, :slug, :phoneNumbers, :emailAddress, :website, :owner, :facilities)
    end
end
