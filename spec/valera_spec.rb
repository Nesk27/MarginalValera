require 'rspec'
require_relative '../valera.rb'

describe Valera do 
	before {@valera = Valera.new}

it "should health eq 100" do
	expect(@valera.health).to eq 100
end

end


	
