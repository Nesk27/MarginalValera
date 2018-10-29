require_relative './menu.rb'

	def new_game
		menu = Menu.new
		valera = Valera.new
		actions = Actions.new
		loop do
			menu.print_stats(valera)
			menu.print_actions
			
			input = gets.to_i
			
			case input
			when 1
				actions.go_work(valera)
			when 2
				actions.view_nature(valera)
			when 3
				actions.films_and_vines(valera)
			when 4
				actions.go_bar(valera)
			when 5
				actions.drinking(valera)
			when 6
				actions.sing(valera)
			when 7
				actions.sleeping(valera)
			end
			system('cls')
			break 'Game over!' if valera.dead?
		end
	end

	new_game

