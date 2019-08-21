
require_relative 'north_west/director'
require_relative 'north_east/director'
require_relative 'south_west/director'
#require_relative 'Oki/director'


Scene.add(North_west::Director.new,  :north_west)
Scene.add(North_east::Director.new,  :north_east)
Scene.add(South_west::Director.new,  :south_west)
#Scene.add(Oki::Director.new, :oki)
#Scene.add(Ending::Director.new,  :ending)
