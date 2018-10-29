require_relative './menu.rb'
require_relative './load.rb'
require "json"



class Main

	def initialize
		@menu = Menu.new
		@valera = Valera.new
	end

  def action_start_menu
    input = gets.to_i
    case input
     when 1
       new_game(@valera)
     when 2
         load_game
         valera = Valera.new(@hash_new['health'], @hash_new['alcomana'], @hash_new['happy'], @hash_new['tired'], @hash_new['money'])
         new_game(valera)
     end 
  end

	def paint
    @menu.start_menu
    action_start_menu
	end

  def paint_new
    @menu.print_stats(@valera)
    @menu.print_actions
  end

  def load_game
    @file_new = open "./saved_game.json"
    @hash_new = JSON.parse(@file_new.read)
  end

	def load_config
		@file = open "./config.json"
		@hash = JSON.parse(@file.read)
	end

	def change_attr(name, value)
		@valera.send("#{name}=", @valera.send(name) + value)
	end

	def new_game(valera)
		loop do
			system('cls')
			paint_new
			input = gets.to_i - 1
			load_config
			next if input < 0 || input > @hash['actions'].length - 1
			@hash['actions'][input]['result'].each do |effect|
				change_attr(effect['name'], effect['value'])
			end
		break "Game over" if valera.dead?
		end
		system('cls')
		puts "Game over :c"
	end
end

main = Main.new
main.paint
	

