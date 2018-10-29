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

	def load_config
		@file = open 'config.json'
		@hash = JSON.parse(@file.read)
	end

	def change_attr(name, value)
		@valera.send("#{name}=", @valera.send(name) + value)
	end

	def new_game
		loop do
			system('cls')
			paint
			input = gets.to_i - 1
			load_config
			next if input < 0 || input > @hash['actions'].length - 1
			@hash['actions'][input]['result'].each do |effect|
				change_attr(effect['name'], effect['value'])
			end
		break "Game over" if @valera.dead?
		end
		system('cls')
		puts "Game over :c"
	end
end

main = Main.new
main.new_game
	

