# frozen_string_literal: true

class ProductsController < ApplicationController
  before_action :set_product, except: [:index, :create]

  def index
    @products = Product.all
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      render json: @product.products_list, status: 201
    else
      render json: @product.errors, status: 422
    end
  end

  def show; end

  def update
    if @product.update(product_params)
      render json: @product.products_list, status: 200
    else
      render json: @product.errors, status: 422
    end
  end

  def add_stock
    @product.add_stock
    render json: @product.products_list, status: 200
  end

  def remove_stock
    @product.remove_stock
    render json: @product.products_list, status: 200
  end

  def deactivate
    @product.deactivate!
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(
      :name,
      :code,
      :stock,
      :purchase_price,
      :selling_price,
      :expiration_date
    )
  end
end
