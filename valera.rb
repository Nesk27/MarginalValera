class Valera

	attr_reader :health, :alcomana, :happy, :tired
	attr_accessor :money

	def health=(value)
		@health = value
		@health = 0 if value < 0
		@health = 100 if value > 100
	end

	def alcomana=(value)
		@alcomana = value
		@alcomana = 0 if value < 0
		@alcomana = 100 if value > 100
	end

	def happy=(value)
		@happy = value
		@happy = -10 if value < -10
		@happy = 10 if value > 10
		
	end

	def tired=(value)
		@tired = value
		@tired = 0 if value < 0
		@tired = 100 if value > 100
	end

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

	def view_nature(valera)
		valera.happy += 1
		valera.alcomana -= 10
		valera.tired += 10
	end

	def films_and_vines(valera)
		valera.happy -= 1
		valera.alcomana += 30
		valera.money -= 20
		valera.tired += 10
		valera.health -= 5
	end

	def films_and_vines(valera)
		valera.happy -= 1
		valera.alcomana += 30
		valera.money -= 20
		valera.tired += 10
		valera.health -= 5
	end

  def go_bar(valera)
    valera.happy += 1
    valera.alcomana += 60
    valera.money -= 100
    valera.tired += 40
    valera.health -= 10
  end

  def drinking(valera)
    valera.happy += 5
    valera.health -= 80
    valera.alcomana += 90
    valera.tired += 80
    valera.money -= 150
  end
end
