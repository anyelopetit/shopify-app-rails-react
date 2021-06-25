# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

orders_response = RestClient.get(ORDERS_URL, AUTH_HEADERS)

puts "===> ORDERS_URL = #{ORDERS_URL}"

orders = JSON.parse(orders_response)['orders']

orders.each do |order|
  puts "===> order = #{order}"
end
