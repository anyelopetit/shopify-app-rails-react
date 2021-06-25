# frozen_string_literal: true

class ProductsController < AuthenticatedController
  def index
    # @products = ShopifyAPI::Product.find(:all, params: { limit: 10 })
    @products = get(api_products_url)
  end
end
