class Person

	attr_reader :destination, :board, :arrive

	def initialize floor
		@destination = floor
		@board = false
		@arrive = false
	end

	def clock_tick

	end

	def notify
		@board = true
	end

	def to_s
		print "(#{destination})"
	end

end