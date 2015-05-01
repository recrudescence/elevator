class Building

	attr_reader :number_of_floors, :number_of_elevators
	attr_accessor :floors, :elevators, :ele_locations

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
		# @ele_locations = elevators.map { |ele| ele.current_floor}
		# @ele_locations.each do |idx|
		# 	elevators.find { |ele| ele.current_floor == idx}.add_pax(floors[idx].exit_person)
		# 	if elevators.find { |ele| ele.current_floor == idx}.destinations.include?(idx)
		# 		elevators.find { |ele| ele.current_floor == idx}.listpax.select{ |pax| pax.destination == idx}.each do |person|
		# 			floors[idx].arrive(person)
		# 		end
		# 	end
		# end


		cfloor = elevators[0].current_floor

		elevators[0].add_pax(floors[cfloor].exit_person)

		elevators[0].listpax.select{ |pax| pax.destination == cfloor}.each do |person|
			floors[cfloor].arrive(person)
			elevators[0].dropoff
		end
	end

	def to_s
		# puts "floors:"
		# (0...number_of_floors).each do |x| puts floors[x].to_s end
		# puts "elevators:"
		# (0...number_of_elevators).each do |x| puts elevators[x].to_s end

		# puts ""

		(number_of_floors).downto(0).each do |x| 
			print floors[x].to_s 
			if (elevators[0].current_floor == x)
				puts elevators[0].to_s 
			else
				puts ""
			end
		end
	end
end