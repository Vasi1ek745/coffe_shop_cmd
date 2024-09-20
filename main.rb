require "rainbow"
require 'pry-byebug'
require_relative './lib/menu'
require_relative './lib/response_answer'
require_relative './lib/cart'


menu = Menu.new
response = ResponseAnswer.new
cart = Cart.new
while menu.continue

  # Текущий шаг
  menu.chose_step(response.answer)
  # РАспознаем команду
  response.check_comand(gets.chomp)
  # Обновляем корзину по необходимости
  cart.update(response.add_order, response.need_update_cart)
  # Выводим статус корзины
  menu.status(cart.order_list, response.need_update_cart)
  # Распознаем команду
  response.check_comand(gets.chomp)

end
  cart.end_message
	
