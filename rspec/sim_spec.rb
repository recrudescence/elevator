require File.dirname(__FILE__) + '/../simul'
require 'rspec'
require 'rack/test'

describe "sim" do
	include Rack::Test::Methods

	describe "building" do

		default = Building.new
		building_params = Building.new(floors: 10, elevators: 2)

		it "should have the correct number of floors" do
			expect(default.number_of_floors).to eq(1)
			expect(building_params.number_of_floors).to eq(10)
		end

		it "should have an array containing the correct number of floors" do
			expect(default.floors).to be_a(Array)
			expect(default.floors.size).to eq(default.number_of_floors)
		end

		describe "floors" do

			it "should have an array for the number of persons" do
				expect(default.floors[0].persons).to be_a(Array)
			end

			it "array should start off with 0 passengers" do
				expect(default.floors[0].num_waiting).to be(0)
			end

			it "adding a waiting passenger should increment floor's persons array"

		end

		it "should have the correct number of elevators" do
			expect(default.number_of_elevators).to eq(0)
			expect(building_params.number_of_elevators).to eq(2)
		end

		it "should have an array containing the correct number of elevators" do
			expect(default.elevators).to be_a(Array)
			expect(default.elevators.size).to eq(default.number_of_elevators)
		end

		describe "elevators" do

			it "should be able to find out what floor it is on"

			it "should have a Set for the floors that passengers want to go to"

			it "should have a Set for floors that are calling it"

			it "should begin with no direction"

			it "should go up if a passenger requests a floor above its floor"

			it "should go down if a passenger requests a floor below its current floor"

			it "should go to ELEV_RESTING_FLOOR when there are no directed or called floors"

		end

	end
end
