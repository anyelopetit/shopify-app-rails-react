# frozen_string_literal: true

module Api
  module V1
    # Orders Controller
    class OrdersController < AuthenticatedController
      # GET   /api/v1/orders
      def index
        @orders = Order.all

        render json: @orders
      end
    end
  end
end
