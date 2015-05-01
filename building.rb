class Building

	attr_reader :number_of_floors, :number_of_elevators
	attr_accessor :floors, :elevators

	def initialize args = {}
		@number_of_floors 		= args[:floors] 	|| 3
		@number_of_elevators 	= args[:elevators]	|| 1
		setup_floors
		setup_elevators
	end

	def setup_floors
		@floors = Array.new
		(0...number_of_floors).each do |fl|
			floors.push(Floor.new(fl))
		end
	end

	def setup_elevators
		@elevators = Array.new
		(0...number_of_elevators).each do |fl|
			elevators.push(Elevator.new(top_floor: number_of_floors))
		end
	end

	def clock_tick
		to_s

	end

	def to_s
		puts "Building w/ #{number_of_floors} floors and #{number_of_elevators} elevators."
		puts "floors:"
		(0...number_of_floors).each do |x| puts floors[x].to_s end
		puts "elevators:"
		(0...number_of_elevators).each do |x| puts elevators[x].to_s end

		puts ""

	end

end