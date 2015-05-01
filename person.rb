class Person

	attr_reader :destination

	def initialize floor
		@destination = floor
	end

	def clock_tick

	end

	def to_s
		print "(#{destination})"
	end

end