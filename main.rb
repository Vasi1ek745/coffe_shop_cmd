require "rainbow"
require 'pry-byebug'
require_relative './modules/menu'
require_relative './modules/response_answer'
require_relative './modules/autorization'
require_relative './modules/order'
require_relative './modules/cart'

class Main
	
	PATH = File.dirname(__FILE__)
	def self.start
		Menu.greetings
	end
end
	



Main.start