require_relative 'opening/director'
require_relative 'north_west/director'
require_relative 'north_east/director'
require_relative 'south_west/director'
require_relative 'Oki/director'
require_relative 'ending/director'
require_relative 'izumo/director'
require_relative 'matsue/matsue'
require_relative 'miho/miho'


Scene.add(Opening::Director.new,  :opening)
Scene.add(North_west::Director.new,  :north_west)
Scene.add(Izumo::Director.new,  :izumo)
Scene.add(Matsue::Director.new,  :matsue)
Scene.add(Miho::Director.new,  :miho)
Scene.add(North_east::Director.new,  :north_east)
Scene.add(South_west::Director.new,  :south_west)
Scene.add(Oki::Director.new, :oki)
Scene.add(Ending::Director.new,  :ending)

