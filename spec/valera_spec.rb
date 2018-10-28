require 'rspec'
require_relative '../valera.rb'

describe Valera do 
	before {@valera = Valera.new}

	it "should health eq 100 on start" do
		expect(@valera.health).to eq 100
	end

	it "should alcomana eq 0 on start" do
		expect(@valera.alcomana).to eq 0
	end

	it "should happy eq 0 on start" do
		expect(@valera.happy).to eq 0
	end

	it "should tired eq 0 on start" do
		expect(@valera.tired).to eq 0
	end

	it "should money eq 300 on start" do
		expect(@valera.money).to eq 300
	end



end


	
