class SellersController < ApplicationController
  before_action :set_seller, only: [:show, :edit, :update, :deactivate]

  def index
  end

  def new
    @seller = Seller.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def deactivate
  end

  private

  def set_seller
    @seller = Seller.find(params[:id])
  end

  def seller_params
    params.require(:seller).permit(
      :email,
      :password,
      :password_confirmation,
      :first_name,
      :last_name,
      :document
    )
  end
end
