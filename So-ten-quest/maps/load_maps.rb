#require_relative 'map/director'
require_relative 'north_west/director'
require_relative 'north_east/director'
require_relative 'south_west/director'
<<<<<<< HEAD
#require_relative 'oki/director'
=======
require_relative 'Oki/director'
>>>>>>> d164294eb8f4625b56cad00e6681accf70f2f8b9

Map.add(North_west::Director.new,  :north_west)
Map.add(North_east::Director.new,  :north_east)
Map.add(South_west::Director.new,  :south_west)
#Map.add(Oki::Director.new, :oki)
#Scene.add(Ending::Director.new,  :ending)
