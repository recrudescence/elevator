class Floor

	attr_accessor :persons, :floor, :elevator_present

	FLOOR_MAX_PERSONS = 10

	def initialize floor, *people
		@floor = floor
		@persons = Array.new
		@elevator_present = false
		people.each do |p| add_person(p) end
	end

	def clock_tick
		#if @elevator_present

	end

	def notify
		@elevator_present = !@elevator_present
	end

	def add_person person
		if num_waiting < FLOOR_MAX_PERSONS
			persons.push(person)
		end
	end

	def exit_person
		persons.shift
	end

	def num_waiting
		persons.size
	end

	def to_s
		"_ FL #{floor}: #{persons.size} pax _"
	end

end