require_relative './actions.rb'

class Menu

	def print_stats(valera)
		puts 'Параметры Валеры:'
		puts "Здоровье: #{valera.health} \t Алкомана: #{valera.alcomana}"
		puts "Счастье: #{valera.happy} \t Усталость: #{valera.tired}"
		puts "Деньги: #{valera.money}$\n\n"	
	end	

	def print_actions
		puts "1 - Пойти на работу"
		puts "2 - Созерцать природу"
		puts "3 - Пить вино и смотреть сериал"
		puts "4 - Сходить в бар"
		puts "5 - Выпить с маргинальными личностями"
		puts "6 - Петь в метро"
		puts "7 - Спать"
	end
end

menu = Menu.new
valera = Valera.new
menu.print_stats(valera)
menu.print_actions