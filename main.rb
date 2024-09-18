require "rainbow"
require 'pry-byebug'
require_relative './lib/menu'
require_relative './lib/response_answer'
require_relative './lib/order'
require_relative './lib/cart'


menu = Menu.new
response = ResponseAnswer.new
cart = Cart.new
while menu.continue
  menu.chose_step
  response.check_comand(gets.chomp)
  cart.update(response)
end
  cart.end_message
	
