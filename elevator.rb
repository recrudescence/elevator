class Elevator

	require 'set'
	require 'pry'
	attr_accessor :listpax, :current_floor, :top_floor, :destinations, :direction, :num_arrivals

	ELEV_MAX_PERSONS	= 10
	ELEV_RESTING_FLOOR	= 0

	def initialize args = {}
		@listpax		= Array.new
		@current_floor 	= ELEV_RESTING_FLOOR
		@top_floor 		= args[:top_floor]
		@destinations 	= Set.new
		@direction 		= '-'
	end

	def clock_tick

		if (@destinations.empty?) 
			if @current_floor != ELEV_RESTING_FLOOR then @direction = 'v' else @direction = '-' end
		else set_direction end
		
		if (@direction == '^')
			@current_floor = @current_floor + 1
		end

		if (@direction == 'v' || (@destinations.empty? && @current_floor != ELEV_RESTING_FLOOR))
			@current_floor = @current_floor - 1
		end



		to_s
	end

	def set_direction
		if (@current_floor < @destinations.max) then	@direction = '^' end 
		if (@current_floor >= @destinations.max) then	@direction = 'v' end
		if (@current_floor == @top_floor) then			@direction = 'v' end
	end

	def add_pax *pax
		pax.each do |pax|
			if (pax.is_a? Person) && (pax.destination < @top_floor)
				@listpax.push(pax)
				@destinations.add(pax.destination)
			end
		end
	end

	def dropoff
		if @destinations.include?(@current_floor)
			@destinations.delete(@current_floor)
			@listpax.select{ |pax| pax.destination == @current_floor}.each do |person|
				@listpax.delete(person)
			end
		end
	end

	def summon_to floor
		@destinations.add(floor)
	end

	def to_s
		"#{@direction} [ #{@listpax.size} pax ] #{@direction} : #{destinations.to_a}"
	end

end