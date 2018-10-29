require_relative './valera.rb'

class Menu

	def print_stats(valera)
		puts 'Параметры Валеры:'
		puts "Здоровье: #{valera.health} \t Алкомана: #{valera.alcomana}"
		puts "Счастье: #{valera.happy} \t Усталость: #{valera.tired}"
		puts "Деньги: #{valera.money}$\n\n"	
	end	

	def load_config
		@file = open 'config.json'
		@hash = JSON.parse(@file.read)
	end

  
	def print_actions
		load_config
    counter = 1
    @hash['actions'].each do |action|
      puts "#{counter.to_s} - #{action['name']}"
      counter += 1
    end
	end
end

