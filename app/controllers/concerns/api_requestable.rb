# frozen_string_literal: true

# Concern to manage API requests
module ApiRequestable
  extend ActiveSupport::Concern

  private

  def get(url)
    ShipitApi.get(url, @auth_headers)
  end

  def post(url, payload)
    ShipitApi.post(url, payload, @auth_headers)
  end

  def put(url, payload)
    ShipitApi.put(url, payload, @auth_headers)
  end

  def delete(url)
    ShipitApi.delete(url, @auth_headers)
  end
end
