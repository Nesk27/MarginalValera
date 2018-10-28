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

	end

	it "should change value by view_nature" do
		@valera = Valera.new
		@actions.view_nature(@valera)
		expect(@valera.happy).to eq 1
		expect(@valera.alcomana).to eq 0
		expect(@valera.money).to eq 300
		expect(@valera.tired).to eq 10
	end
end
