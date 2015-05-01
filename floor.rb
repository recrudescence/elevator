class Floor

	attr_accessor :waitlist, :floor, :elevator_present, :arrivals

	FLOOR_MAX_PERSONS = 10

	def initialize floor, *people
		@floor = floor
		@waitlist = Array.new
		@arrivals = Array.new
		@elevator_present = false
		people.each do |p| add_person(p) end
	end

	def clock_tick
		#if @elevator_present

	end

	def notify
		elevator_present = true
	end

	def add_person person
		if num_waiting < FLOOR_MAX_PERSONS
			waitlist.push(person)
		end
	end

	def exit_person
		waitlist.shift
	end

	def arrive person
		arrivals.push(person)
	end

	def num_waiting
		waitlist.size
	end

	def full?
		num_waiting = FLOOR_MAX_PERSONS
	end

	def to_s
		"_ FL #{floor}: #{waitlist.size} pax waiting; #{arrivals.size} pax arrived _ "
	end

end