#require_relative 'map/director'
require_relative 'north_west/director'
require_relative 'north_east/director'
require_relative 'south_west/director'

Map.add(North_west::Director.new,  :north_west)
Map.add(North_east::Director.new,  :north_east)
Map.add(South_west::Director.new,  :south_west)
#Scene.add(Ending::Director.new,  :ending)
