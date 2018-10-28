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
		expect(@valera.happy).to eq 1
		expect(@valera.alcomana).to eq 30
		expect(@valera.money).to eq 280
		expect(@valera.tired).to eq 10
		expect(@valera.health).to eq 95
	end

end
