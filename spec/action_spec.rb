require 'rspec'
require_relative '../valera.rb'

describe Actions do 
	before {@actions = Actions.new}

	it "should change value by go_work" do
		@valera = Valera.new
		@actions.go_work(@valera)
		expect(@valera.happy).to eq -5
		expect(@valera.alcomana).to eq 0
		expect(@valera.money).to eq 400
		expect(@valera.tired).to eq 70
		expect(@valera.health).to eq 100

	end

	it "should change value by view_nature" do
		@valera = Valera.new
		@actions.view_nature(@valera)
		expect(@valera.happy).to eq 1
		expect(@valera.alcomana).to eq 0
		expect(@valera.money).to eq 300
		expect(@valera.tired).to eq 10
		expect(@valera.health).to eq 100
	end

	it "should change value by films_and_vines" do
		@valera = Valera.new
		@actions.films_and_vines(@valera)
		expect(@valera.happy).to eq -1
		expect(@valera.alcomana).to eq 30
		expect(@valera.money).to eq 280
		expect(@valera.tired).to eq 10
		expect(@valera.health).to eq 95
	end

	it "should change value by go_bar" do
		@valera = Valera.new
		@actions.go_bar(@valera)
		expect(@valera.happy).to eq 1
		expect(@valera.alcomana).to eq 60
		expect(@valera.money).to eq 200
		expect(@valera.tired).to eq 40
		expect(@valera.health).to eq 90
	end

	it "should change value by drinking" do
		@valera = Valera.new
		@actions.drinking(@valera)
		expect(@valera.happy).to eq 5
		expect(@valera.health).to eq 20
		expect(@valera.alcomana).to eq 90
		expect(@valera.tired).to eq 80
		expect(@valera.money).to eq 150
	end

	it "should change value by sing" do
		@valera = Valera.new
		@actions.sing(@valera)
		expect(@valera.happy).to eq 1
		expect(@valera.health).to eq 100
		expect(@valera.alcomana).to eq 10
		expect(@valera.tired).to eq 20
		expect(@valera.money).to eq 310
		@valera.alcomana = 50
		@actions.sing(@valera)
		expect(@valera.money).to eq 370
	end

	it "should change value by sleeping" do
		@valera = Valera.new
		@actions.sleeping(@valera)
		expect(@valera.happy).to eq 0
		expect(@valera.health).to eq 100
		expect(@valera.alcomana).to eq 0
		expect(@valera.tired).to eq 0
		expect(@valera.money).to eq 300
		@valera.alcomana = 71
		@valera.happy = 5
		@actions.sleeping(@valera)
		expect(@valera.happy).to eq 2
		@valera.alcomana = 29
		@valera.health = 0
		@actions.sleeping(@valera)
		expect(@valera.health).to eq 90
	end

end
