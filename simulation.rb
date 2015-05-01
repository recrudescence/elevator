class Simulation

	attr_accessor :elements

	def initialize
		puts "instantiated Simulation obj"
		@elements = Array.new
	end

	def register object
		# add object to list of objects to tick over
		puts "*** registering #{object.class} ***"
		elements.push(object)
	end

	def run ticks	
		(1..ticks).each do 
			elements.each do |ele| ele.clock_tick end
			sleep(1)
		end
	end
end