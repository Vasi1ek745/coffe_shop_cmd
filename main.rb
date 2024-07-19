require "rainbow"
require './modules/menu'
require './modules/response_answer'
require './modules/autorization'
require 'pry-byebug'

class Main

	def self.start
		Menu.greetings
	end
end
	



Main.start