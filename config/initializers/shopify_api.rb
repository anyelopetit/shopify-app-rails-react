SHOPIFY_API_KEY = ENV['SHOPIFY_API_KEY']
SHOPIFY_API_SECRET = ENV['SHOPIFY_API_SECRET']
SHOPIFY_ACCESS_TOKEN = ENV['SHOPIFY_ACCESS_TOKEN']
SHOP_URL = ENV['SHOP_URL']
API_ROOT = "https://#{SHOP_URL}/admin/api/2021-04".freeze
AUTH_HEADERS = {
  'Accept' => 'application/json',
  'Content-Type' => 'application/json',
  'X-Shopify-Access-Token' => SHOPIFY_ACCESS_TOKEN
}.freeze

ShopifyAPI::Session.setup(api_key: SHOPIFY_API_KEY, secret: SHOPIFY_API_SECRET)

# Routes

# Orders
ORDERS_URL = "#{API_ROOT}/orders.json".freeze
