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

  def dead?
    if @health == 0 || @happy == -10 || @money == -1000
      return true
    end
    return false
  end

end

