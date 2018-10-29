require_relative './actions.rb'

class Menu

	def print_stats(valera)
		puts 'Параметры Валеры:'
		puts "Здоровье: #{valera.health} \t Алкомана: #{valera.alcomana}"
		puts "Счастье: #{valera.happy} \t Усталость: #{valera.tired}"
		puts "Деньги: #{valera.money}$"	
	end	

end