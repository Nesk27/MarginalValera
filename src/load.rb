class Load
	def save(valera)
		@hash = {'health' => valera.health, 'food' => valera.food,
      		'alcomana' => valera.alcomana, 'happy' => valera.happy,
      		'tired' => valera.tired, 'money' => valera.money
      	}
		file = File.open('saved_game.json', 'w')
   		file.write(JSON.dump(save_hash))
    	file.close
	end


  	def load
    	file = open 'saved_game.json'
    	JSON.parse(file.read)
  	end


end