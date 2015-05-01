require_relative './simulation'
require_relative './building'
require_relative './floor'
require_relative './elevator'
require_relative './person'

sim = Simulation.new
building = Building.new(floors: 5)

sim.register(building)
building.floors.each do |fl| sim.register(fl) end
building.elevators.each do |ele| sim.register(ele) end

puts ""

building.elevators[0].add_pax(Person.new(3))
building.floors[0].add_person(Person.new(2))

puts "Building w/ #{building.number_of_floors} floors and #{building.number_of_elevators} elevators."
sim.run(10)