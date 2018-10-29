require_relative './menu.rb'
require "json"



class Main

	def initialize
		@menu = Menu.new
		@valera = Valera.new
	end

	def paint
		@menu.print_stats(@valera)
		@menu.print_actions
	end
	def new_game
		paint
	end
end

main = Main.new
main.new_game
	

