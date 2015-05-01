# elevator
one last project for cosi 105b: an elevator simulation.

#### Code Climate Report ####
[![Code Climate](https://codeclimate.com/github/recrudescence/elevator/badges/gpa.svg)](https://codeclimate.com/github/recrudescence/elevator)

### Basic Structure ###
My implementation of the given prompt has the following structure:

##### Building #####
* Creates and sets up `Floors` and `Elevators`.
* Post clock-tick, determines when passengers go on or or stay off an elevator based one each individual's needs.

##### Floors #####
* Contains a list of `People` who are waiting and who have arrived on that floor.

##### Persons #####
* Knows its destination of choice.

##### Elevators #####
* Meat and body of the program. 
* Chooses what direction to go in based on the requested destinations.
* Sets the direction that the program desires fosho
* ~~Can drop the kids off at school~~ 

##### Testing #####
* Using fundamentals of test-driven design, I added some tests in prior to fleshing out the rest of the program. In the development process, however, many tests became incompatible with various structural/design changes to the program, and so were removed/set aside for later.


##### Some interesting design #####
Can't say this is the most well designed, intricately, elegant, and fascinating program. I did, however, incorporate some nifty tricks into the code. For example, I have written the code for several initialize functions to take a hash as a perimeter. This allows for an unordered parameters list when initializing these objects, which would be a lot easier to handle (no need to declare parameters in a specific order!)
