class ApplicationController < ActionController::Base
  include ApiRoutable
  include ApiRequestable

  before_action :auth_headers

  def auth_headers
    @auth_headers =
      { 
        'Accept' => 'application/json',
        'Content-Type' => 'application/json',
        'X-Shopify-Access-Token' => SHOPIFY_ACCESS_TOKEN
      }
  end
end
