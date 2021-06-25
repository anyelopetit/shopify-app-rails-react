# frozen_string_literal: true

class OrdersController < AuthenticatedController
  def index
    # @products = ShopifyAPI::Product.find(:all, params: { limit: 10 })
    @orders = get(api_orders_url)

    render json: @orders
  end
end
