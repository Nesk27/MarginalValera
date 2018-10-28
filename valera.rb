class Valera

	attr_accessor :health, :alcomana, :happy, :tired, :money

	def initialize
		@health = 100
		@alcomana = 0
		@happy = 0
		@tired = 0
		@money = 300
	end
end

class Actions

	def go_work(valera)
		if valera.alcomana < 50 && valera.tired < 10
			valera.happy -= 5
			valera.alcomana -= 30
			valera.money += 100
			valera.tired += 70
		end
	end
end
