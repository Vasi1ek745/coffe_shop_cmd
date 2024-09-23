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
  menu.chose_step(response.answer, cart.order_list)

  # проверка нужно ли обновить корзину после команды

  if response.need_update_cart
  	cart.update(response.add_order)
  	response.no_need_update
  	menu.status(cart.order_list)
  end
  # считываем команду
  response.check_comand(gets.chomp)
  # проверяем хочет ли пользователь закончить
  menu.check_continue(response.answer)

end
  menu.finish(cart.order_list,cart.finish_sum, cart.table_check)
	
