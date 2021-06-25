# frozen_string_literal: true

# Concern to manage API routes
module ApiRoutable
  extend ActiveSupport::Concern

  private

  # Products

  def api_products_url
    "#{API_ROOT}/products.json" # Products - List
  end

  # Orders

  def api_orders_url
    "#{API_ROOT}/orders.json" # Orders - List
  end
end
