require_relative './valera.rb'

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

  def sing(valera)
    valera.happy += 1
    valera.money += 10
    valera.money += 50 if valera.alcomana > 40 && valera.alcomana < 70
    valera.alcomana += 10
    valera.tired += 20
  end

  def sleeping(valera)
    valera.health += 90 if valera.alcomana < 30
    valera.happy -= 3 if valera.alcomana > 70
    valera.alcomana -= 50
    valera.tired -= 70
  end

end