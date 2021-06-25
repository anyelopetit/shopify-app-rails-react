# frozen_string_literal: true

# ShopifyApp module authenticate
# SessionsController Decorator
ShopifyApp::SessionsController.class_eval do
  protect_from_forgery with: :null_session
end
