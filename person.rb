class Person

	attr_reader :destination, :arrival

	def initialize floor
		@destination = floor
		@arrival = false
		@done = false
	end

	def clock_tick

	end

	def notify
		@arrival = true
	end

	def to_s
		print "(#{destination})"
	end

end